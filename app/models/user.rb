# == Schema Information
#
# Table name: users
#
#  id         :integer          not null, primary key
#  name       :string
#  email      :string
#  password   :string
#  gender     :string
#  dob        :datetime
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class User < ApplicationRecord
  validates :name, :email, :password, :gender, presence: { message: 'Field Cannot Be Empty' }
  validates :email, uniqueness: true, format: { with: /[\w.]*\@[\w]*\.[\w]*/ }
  #validates :gender, inclusion: { in: %w('Male', 'Female'), message: 'Valid Gender' }
  validates :password, length: { in: 6..32, message: 'is too short' }

  has_one :address
  has_many :posts

  before_create do
    puts 'Creating the Object....'
  end
  after_create do
    puts 'Object created Successfully...'
  end
end
