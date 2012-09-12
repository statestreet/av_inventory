class Fan < ActiveRecord::Base
  belongs_to :artist
  belongs_to :user
  # attr_accessible :title, :body
end
