class Doctor < User
    has_many :patients, through: :appointment
    has_many :appointments
end
