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
RSpec.describe User do
  context 'VALID USER INFORMATION-> ' do
    it "User succesfully created" do
      user = create(:user)
      expect(user.errors.any?).to eq(false)
    end

    context 'EMAIL VALIDATIONS-> ' do
      it 'should be correct email' do
        user = User.new
        user.email = 'nikhil@g.com'
        user.save
        expect(user.errors[:email]).to eq([])
      end

      it 'should be correct email format' do
        user = User.new
        user.email = 'nikhilgmail.com'
        user.save
        expect(user.errors[:email]).to eq(['is invalid'])
      end

      it 'should not voilate email validations' do
        user = User.new
        user.email = ''
        user.save
        expect(user.errors[:email]).to eq(['Field Cannot Be Empty', 'is invalid'])
      end

      it 'should be unique' do
        user = User.create(name: 'Nikhil', email: 'nvp@gmail.com', password: 'qwertyuiop', gender: 'Male')
        user = User.new
        user.email = 'nvp@gmail.com'
        user.save
        expect(user.errors[:email]).to eq(['has already been taken'])
      end
    end

    context 'PASSWORD VALDIATIONS-> ' do
      it 'should be correct password' do
        user = User.new
        user.password = 'qwertyuiop'
        user.save
        expect(user.errors[:password]).to eq([])
      end

      it 'should have password length in [6..32]' do
        user = User.new
        user.password = 'qwert'
        user.save
        expect(user.errors[:password]).to eq(['is too short'])
      end
    end

    context 'GENDER VALIDATIONS-> ' do
      it 'should have some value' do
        user = User.new
        user.gender = ''
        user.save
        expect(user.errors[:gender]).to eq(['Field Cannot Be Empty'])
      end

      it 'should have correct gender validation' do
        user = User.new
        user.gender = 'Male'
        user.save
        expect(user.errors[:gender]).to eq([])
      end
    end
  end
end
