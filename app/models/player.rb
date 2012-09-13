class Player < ActiveRecord::Base
  belongs_to :team
  attr_accessible :date_of_birth, :injured, :name, :salary
end
