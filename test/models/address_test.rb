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

require 'test_helper'

class AddressTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
