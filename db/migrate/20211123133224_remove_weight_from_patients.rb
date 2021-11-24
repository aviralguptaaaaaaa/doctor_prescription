class RemoveWeightFromPatients < ActiveRecord::Migration[6.1]
  def change
    remove_column :patients, :weight, :integer
  end
end
