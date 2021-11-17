class CreatePatients < ActiveRecord::Migration[6.1]
  def change
    create_table :patients do |t|
      t.integer :age
      t.integer :weight
      t.text :disease

      t.timestamps
    end
  end
end
