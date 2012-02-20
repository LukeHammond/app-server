class CreateBread < ActiveRecord::Migration
  def change
    create_table :bread do |t|
      t.string :name

      t.timestamps
    end
  end
end
