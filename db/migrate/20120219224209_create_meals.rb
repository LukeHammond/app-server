class CreateMeals < ActiveRecord::Migration
  def change
    create_table :meals do |t|
      t.integer :wine_id
      t.integer :bread_id
      t.integer :cheese_id
      t.timestamps
    end
  end
end
