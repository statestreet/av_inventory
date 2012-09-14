class User < ActiveRecord::Base
  attr_accessible :email, :name, :password_digest, :state, :vericode, :avatar
  has_attached_file :avatar, 
                    :url  => "/system/pictures/:id/:style_:basename.:extension", 
                    :path => ":rails_root/public/system/pictures/:id/:style_:basename.:extension", 
                  :styles => { :medium => "300x300>", :thumb => "100x100>" } ,
				  :default_url => "images/default_faces/:style.jpg"

  validates_attachment_size :avatar, :less_than => 2.megabytes 
end
