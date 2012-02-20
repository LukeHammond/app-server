class Wine < ActiveRecord::Base
  auto_extendible
  
  has_many :meals
end
