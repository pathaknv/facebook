# == Schema Information
#
# Table name: addresses
#
#  id         :integer          not null, primary key
#  city       :string
#  pincode    :integer
#  country    :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  user_id    :integer
#

class Address < ApplicationRecord
  validates :city, :pincode, :country, presence: true
  validates :pincode, length: { is: 6 }

  belongs_to :user
end
