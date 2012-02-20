class Bread < ActiveRecord::Base
  auto_extendible

  self.table_name = 'bread'
  
  has_many :meals

  def prepare
    puts "slicing"
  end
end
