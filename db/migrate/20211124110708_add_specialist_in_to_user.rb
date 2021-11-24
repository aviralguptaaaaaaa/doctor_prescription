class AddSpecialistInToUser < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :specialist_in, :string
  end
end
