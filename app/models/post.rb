# == Schema Information
#
# Table name: posts
#
#  id         :integer          not null, primary key
#  title      :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  user_id    :integer          not null
#
# Indexes
#
#  index_posts_on_user_id  (user_id)
#
# Foreign Keys
#
#  user_id  (user_id => users.id)
#
class Post < ApplicationRecord
  encrypts :title
  has_one_attached :image
  belongs_to :user
  has_many :comments, dependent: :destroy
  validates_presence_of :title, message: "can't be blank"
  after_commit do
    broadcast_prepend_to "new_post_list",
      target: "posts",
      partial: "posts/post",
      locals: { post: self }
  end
end
