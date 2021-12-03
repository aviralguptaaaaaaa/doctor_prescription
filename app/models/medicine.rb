class Medicine < ApplicationRecord
  belongs_to :appointment
  validates :name, presence: true
  validates :purpose, presence: true
  validates :medicine_intake, presence: true
end
