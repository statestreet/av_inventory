class ModelsController < ApplicationController
  active_scaffold :model do |conf|
  end
  layout "activescaffold" 
end 