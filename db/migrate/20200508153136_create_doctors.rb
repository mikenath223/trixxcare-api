class CreateDoctors < ActiveRecord::Migration[5.1]
  def change
    create_table :doctors do |t|
      t.string :name
      t.string :image
      t.integer :price
      t.string :details

      t.timestamps
    end
  end
end
