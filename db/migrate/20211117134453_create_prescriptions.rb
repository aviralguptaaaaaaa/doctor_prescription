class CreatePrescriptions < ActiveRecord::Migration[6.1]
  def change
    create_table :prescriptions do |t|
      t.text :body
      t.string :doctors_name
      t.string :date
      t.string :patients_name

      t.timestamps
    end
  end
end
