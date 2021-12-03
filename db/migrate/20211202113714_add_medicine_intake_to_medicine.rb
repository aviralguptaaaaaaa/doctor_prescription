class AddMedicineIntakeToMedicine < ActiveRecord::Migration[6.1]
  def change
    add_column :medicines, :medicine_intake, :string
  end
end
