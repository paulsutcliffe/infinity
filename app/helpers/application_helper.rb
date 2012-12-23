module ApplicationHelper

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





end
