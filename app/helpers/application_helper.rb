module ApplicationHelper


  def add_child_link(name, form_builder, association)
    object = form_builder.object.class.reflect_on_association(association).klass.new
    partial = "#{association.to_s.singularize}_fields"
    template = content_tag(:div, :id => "#{association}_fields_template", :style => "display: none") do
      form_builder.fields_for(association, object, :child_index => "new_#{association}") do |f|
        render(:partial => partial, :locals => { :f => f })
      end
    end
    template + link_to(name, "javascript:void(0)", :class => "add_child btn add", :"data-association" => association)
  end

  def remove_child_link(name, f)
    f.hidden_field(:_destroy) + link_to(name, "javascript:void(0)", :class => "remove_child btn remove")
  end






# helpers for menu
#########################################################################
  # list menu maker
  def menu_li_footer(current_page, current_controller, current_url)
    content_tag(:li, :class => 'footer-only') do
      link_to_unless_current current_page, current_url do
        content_tag(:span, current_page)
      end
    end
  end

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

#########################################################################


 # def paragraph(post, length)
 #   "#{simple_format(truncate(post, :length => length))}"
 # end

  def paragraph(text)
    "#{sanitize(simple_format(text), :tags => %w(p i br b))}".html_safe
  end

  def paragraph_truncate(text, length)
    "#{sanitize(simple_format(truncate(text, :length => length)), :tags => %w(p i br b))}".html_safe
  end

#  def paragraph(text, length)
#    "#{simple_format(truncate(text, :length => length))}"
#  end
#

#########################################################################
# lightbox helper

  def lightbox(image_picture, image_full)
    link_to image_tag(image_picture), image_full, :class => 'lightbox', :rel => 'gallery'
  end



end
