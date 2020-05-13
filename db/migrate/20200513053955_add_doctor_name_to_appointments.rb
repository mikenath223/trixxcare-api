class AddDoctorNameToAppointments < ActiveRecord::Migration[5.1]
  def change
    add_column :appointments, :doctor_name, :string
  end
end
