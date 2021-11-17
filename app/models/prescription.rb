class Prescription < ApplicationRecord
    belongs_to :patient
    belongs_to :doctor
    mas_many :prescribed_medicine
end
