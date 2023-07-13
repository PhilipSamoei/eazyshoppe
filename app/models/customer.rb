class Customer < ApplicationRecord
    has_secure_password
    validates :name, presence: true, uniqueness: true
    validates :email, presence: true, uniqueness: true
    validates :address , presence: true
    validates :password_digest, presence: true,length: { minimum: 6 }
    validates :password_digest, confirmation: true

    has_many :dealers, through: :watches
end
