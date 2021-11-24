class AddQualificationsToUser < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :qualifications, :string
  end
end
