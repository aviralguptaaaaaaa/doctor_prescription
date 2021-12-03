class Appointment < ApplicationRecord
    belongs_to :patient 
    belongs_to :doctor 
    has_many :medicines
    validates :date, presence: true
    validates :patients_problem, presence: true, length: { minimum: 15 }
    validates :patients_age, presence: true
    validates :time, presence: true
end
