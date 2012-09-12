class Comment < ActiveRecord::Base
  belongs_to :user
  belongs_to :movie
  belongs_to :artist
  attr_accessible :comment_date, :comment_type, :state
end
