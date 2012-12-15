module ApplicationHelper

  # list menu maker
  def menu_li(current_page, current_controller, current_url)
    content_tag(:li, :class => lavalamp(current_controller)) do
      link_to_unless_current current_page, current_url do
        content_tag(:span, current_page)
      end
    end
  end

  # extension of menu maker wich applies lavalamp class to the current controller
  def lavalamp(current_controller)
    if params[:controller] == "#{current_controller}"
      'selectedLava'
    end
  end



  def paragraph(post, length)
    "#{truncate(post.descripcion, :length => length)}"
  end

  def agregar_clase_segun_tipo(post)
    "#{post.tipo == 'Diseño y Web'? 'foto' : 'video'}"
  end

  def agregar_tipo_como_clase(post)
    post.tipo.gsub(/ /,"").downcase
  end




end
