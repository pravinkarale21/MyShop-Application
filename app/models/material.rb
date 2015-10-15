class Material < ActiveRecord::Base
 #include Paperclip::Glue
  attr_accessible :Type, :price, :size, :subtype,:avatar#,:image_name
  # has_attached_file :image_name,
  # :styles => { :medium => "300x300>", :thumb => "100x100>" },
  # :path => ":rails_root/app/assets/images/:basename.:extension" ,
  # :url => "/system/:class/:attachment/:id/:style/:basename.:extension"
  # validates_attachment_content_type :image_name, content_type: /\Aimage\/.*\Z/
  
  # has_many :subtypes
  mount_uploader :avatar, AvatarUploader
end


#:url => "/system/users/images/:id/:style/:filename"  