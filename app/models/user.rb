class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable, :validatable
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  
  scope :doctor, -> { where(type: 'doctor') } 
  scope :patient, -> { where(type: 'patient') } 

  validates :name, presence: true
  validates :phone_no, presence: true, length: { minimum: 10 , maximum: 10}
end
