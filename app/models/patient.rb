class Patient < User
  has_many :appointments, :class_name => "Appointment"
  has_many :doctors, through: :appointments
  
end
