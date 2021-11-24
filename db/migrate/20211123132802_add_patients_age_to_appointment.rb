class AddPatientsAgeToAppointment < ActiveRecord::Migration[6.1]
  def change
    add_column :appointments, :patients_age, :integer
  end
end
