class Watch < ApplicationRecord
    belongs_to :dealer

    validates :dealer_id, presence: true
    validates :name, presence: true,uniqueness: true
    validates :price, presence: true
    validates :year, presence: true
    validates :brand, presence: true
    validates :image_url, presence: true
    
end
