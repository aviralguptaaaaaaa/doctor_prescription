class Doctor < User
    has_many :appointments, :class_name => "Appointment"
    has_many :patients, through: :appointment
    
end
