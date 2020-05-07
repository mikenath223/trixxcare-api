class CreateHouses < ActiveRecord::Migration[6.0]
  def change
    create_table :houses do |t|
      t.string :name
      t.string :image
      t.integer :price
      t.string :details
      t.string :rating

      t.timestamps
    end
  end
end
