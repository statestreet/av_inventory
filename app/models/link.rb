class Link < ActiveRecord::Base
  belongs_to :movie
  attr_accessible :link_type, :url
end
