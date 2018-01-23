class AddUsers < ActiveRecord::Migration[5.1]
  def up
    5.times do |i|
      User.create!(name: "User #{i}", email: "user#{i}@gmail.com", password: "facebook_user#{i}",
        gender: "Male", dob: Date.today)
    end
  end

  def down
    User.delete_all
  end
end
