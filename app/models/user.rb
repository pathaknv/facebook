class User < ApplicationRecord
  validates :name, :email, :password, :gender, :dob , presence: { message: 'Field Cannot Be Empty' }
  validates :email, format: { with: /[\w.]*\@[\w]*\.[\w]*/ }
  validates :email, uniqueness: true
  validates :password, length: { in: 6..32 }
end
