class RemoveSpecialistInFromDoctor < ActiveRecord::Migration[6.1]
  def change
    remove_column :doctors, :specialist_in, :string
  end
end
