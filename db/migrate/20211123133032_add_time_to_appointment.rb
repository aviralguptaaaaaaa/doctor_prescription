class AddTimeToAppointment < ActiveRecord::Migration[6.1]
  def change
    add_column :appointments, :time, :string
  end
end
