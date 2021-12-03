class Appointment < ApplicationRecord
    belongs_to :patient 
    belongs_to :doctor 
    has_many :medicines
end
