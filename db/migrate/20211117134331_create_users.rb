class CreateUsers < ActiveRecord::Migration[6.1]
  def change
    create_table :users do |t|
      t.string :name
      t.strng :email
      t.string :password
      t.integer :phone_no
      t.string :role

      t.timestamps
    end
  end
end
