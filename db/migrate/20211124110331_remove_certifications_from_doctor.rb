class RemoveCertificationsFromDoctor < ActiveRecord::Migration[6.1]
  def change
    remove_column :doctors, :certifications, :string
  end
end
