class User < ApplicationRecord
    validates :name, presence: true
    validates :email, presence: true
    validates :password, presence: true
    validates :phone_no, presence: true
    validates :role, presence: true
    

end
