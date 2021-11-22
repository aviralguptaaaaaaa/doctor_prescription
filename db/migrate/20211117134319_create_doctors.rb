class CreateDoctors < ActiveRecord::Migration[6.1]
  def change
    create_table :doctors do |t|
      t.string :specialist_in
      t.string :Qualifications
      t.string :Certifications
      t.timestamps
    end
  end
end
