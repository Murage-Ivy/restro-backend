class CreateFoods < ActiveRecord::Migration[7.0]
  def change
    create_table :foods do |t|
      t.string :name
      t.integer :restaurant_id
      t.integer :price
      t.integer :rating

      t.timestamps
    end
  end
end
