Entonces /^no debería ver la imagen "(.*?)"$/ do |imagen|
  PartnerPicture.new(:partner_picture => File.new("features/support/partner_picture.png", "r")).save!
end
