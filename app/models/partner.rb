class Partner < ActiveRecord::Base

  validates :partner_picture, :presence => true
  #validates_attachment_content_type :partner_picture, :content_type => ['image/png']
  #validates_attachment_size :partner_picture, :less_than => 1.megabytes

  has_attached_file :partner_picture,
    :path => ":rails_root/public/system/:attachment/:id/:style/:filename",
    :url => "/system/:attachment/:id/:style/:filename",
    :styles => {
    :thumb =>{:geometry => '87x80#', :quality => 80}
  }

end
