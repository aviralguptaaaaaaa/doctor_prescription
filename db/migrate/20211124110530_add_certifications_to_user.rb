class AddCertificationsToUser < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :certifications, :string
  end
end
