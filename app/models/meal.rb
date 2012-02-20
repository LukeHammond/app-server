class Meal < ActiveRecord::Base
  belongs_to :wine
  belongs_to :bread
  belongs_to :cheese
end
