class Doctor < ApplicationRecord
    has_many :patients, through: :appointment
end
