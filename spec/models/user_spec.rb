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

require 'rails_helper.rb'
RSpec.describe do
  context 'User Validation' do
    it "Valid User Details" do
      user = User.new
      user.name = 'Nikhil Pathak'
      user.email = 'nikhilpathak926@gmail.com'
      user.password = 'hahahaha'
      user.gender = 'Male'
      user.dob = '1/1/1996'
      result = user.save
      expect(user.valid?).to eq(true)
    end

    context 'Email Validations' do
      it 'Correct Email' do
        user = User.create(name: 'Nikhil', email: 'nikhil@g.co', password: 'qwertyuiop', gender: 'Male')
        expect(user.valid?).to eq(true)
      end

      it 'Incorrect Email' do
        user = User.create(name: 'Nikhil', email: 'nikhilg.co', password: 'qwertyuiop', gender: 'Male')
        expect(user.valid?).to eq(false)
      end
    end

    context 'Password Validation' do
      it 'Correct Password Validation' do
        user = User.create(name: 'Nikhil', email: 'nikhil@g.co', password: 'qwertyuiop', gender: 'Male')
        expect(user.valid?).to eq(false)
      end

      it 'Incorrect Password Validation' do
        user = User.create(name: 'Nikhil', email: 'nikhil@g.co', password: 'qwe', gender: 'Male')
        expect(user.valid?).to eq(false)
      end
    end

  end
end
