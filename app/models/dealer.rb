class Dealer < ApplicationRecord
    has_secure_password
    
    validates :name, presence: true, uniqueness: true
    validates :email, presence: true, uniqueness: true
    validates :password_digest, presence: true
    validates :address, presence: true
    validates :contact, presence: true

    has_many :watches
end
