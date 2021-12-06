class AddPrescriptionToAppointments < ActiveRecord::Migration[6.1]
  def change
    add_column :appointments, :prescription, :string
  end
end
