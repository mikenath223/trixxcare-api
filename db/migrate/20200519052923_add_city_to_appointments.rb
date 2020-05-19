class AddCityToAppointments < ActiveRecord::Migration[5.1]
  def change
    add_column :appointments, :city, :string
  end
end
