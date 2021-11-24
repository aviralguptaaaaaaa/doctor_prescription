class AddPatientsProblemToAppointment < ActiveRecord::Migration[6.1]
  def change
    add_column :appointments, :patients_problem, :text
  end
end
