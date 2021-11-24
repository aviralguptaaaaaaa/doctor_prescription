class RemoveDiseaseFromPatients < ActiveRecord::Migration[6.1]
  def change
    remove_column :patients, :disease, :text
  end
end
