class AddAppointmentRefToMedicine < ActiveRecord::Migration[6.1]
  def change
    add_reference :medicines, :appointment, null: false, foreign_key: true
  end
end
