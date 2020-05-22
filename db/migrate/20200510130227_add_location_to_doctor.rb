class AddLocationToDoctor < ActiveRecord::Migration[5.1]
  def change
    add_column :doctors, :location, :string
  end
end
