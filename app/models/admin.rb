class Admin < ActiveRecord::Base
  attr_accessible :email, :name, :password, :password_confirmation, :state, :admin_type, :username
  has_secure_password
end
