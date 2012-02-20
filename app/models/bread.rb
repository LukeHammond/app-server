class Bread < ActiveRecord::Base
  self.table_name = 'bread'
  
  has_many :meals
end
