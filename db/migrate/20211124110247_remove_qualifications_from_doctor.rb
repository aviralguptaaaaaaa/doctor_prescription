class RemoveQualificationsFromDoctor < ActiveRecord::Migration[6.1]
  def change
    remove_column :doctors, :qualifications, :string
  end
end
