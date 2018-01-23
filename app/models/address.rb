class Address < ApplicationRecord
  validates :city, :pincode, :country, presence: true
  validates :pincode, length: { is: 6 }
end
