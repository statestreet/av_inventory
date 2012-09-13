class Team < ActiveRecord::Base
  attr_accessible :name, :position
  has_many :players
end
