class Sale < ApplicationRecord
  belongs_to :dealer
  belongs_to :customer
  belongs_to :watch
end
