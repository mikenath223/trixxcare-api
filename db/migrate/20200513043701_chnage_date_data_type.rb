class ChnageDateDataType < ActiveRecord::Migration[5.1]
  def change
    change_column :appointments, :date, :string, default: Time.now
  end
end
