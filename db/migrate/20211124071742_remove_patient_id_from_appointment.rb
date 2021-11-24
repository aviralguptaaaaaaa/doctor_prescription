class RemovePatientIdFromAppointment < ActiveRecord::Migration[6.1]
  def change
    remove_column :appointments, :patient_id, :integer
  end
end
