class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.string :name
      t.string :email
      t.string :email
      t.string :password
      t.string :gender
      t.DateTime :dob

      t.timestamps
    end
  end
end