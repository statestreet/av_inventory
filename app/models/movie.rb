class Movie < ActiveRecord::Base
  belongs_to :artist
  attr_accessible :company, :publish_date, :title
end
