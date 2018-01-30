# == Schema Information
#
# Table name: posts
#
#  id         :integer          not null, primary key
#  title      :string
#  content    :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  user_id    :integer
#

class Post < ApplicationRecord
  validates :title, :content, presence:true
end
