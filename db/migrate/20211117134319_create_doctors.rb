class CreateDoctors < ActiveRecord::Migration[6.1]
  def change
    create_table :doctors do |t|
      t.string :spesialist_in
      t.string :Qualifications

      t.timestamps
    end
  end
end
