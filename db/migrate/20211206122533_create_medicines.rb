class CreateMedicines < ActiveRecord::Migration[6.1]
  def change
    create_table :medicines do |t|
      t.string "name"
      t.string "purpose"
      t.string "medicine_intake"
      t.references :appointment

      t.timestamps
    end
  end
end
