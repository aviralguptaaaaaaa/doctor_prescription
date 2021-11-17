class CreatePrescripedMedicines < ActiveRecord::Migration[6.1]
  def change
    create_table :prescriped_medicines do |t|
      t.integer :medicine_id
      t.integer :quantity
      t.integer :prescription_id

      t.timestamps
    end
  end
end
