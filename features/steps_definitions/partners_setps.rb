Entonces /^no debería ver la imagen "(.*?)"$/ do |archivo|
  page.has_no_xpath?("//img[contains(@src, \"#{archivo}\")]")
end

Dado /^que existe el partner "(.*?)"$/ do |nombre|
  Partner.new(:title => nombre, :url => 'www.#{nombre}.com', :partner_picture => File.new("features/support/partners/img-brands-1.png", "r")).save!
  visit('/partners')
end
