class Post < ActiveRecord::Base
  has_many :likes, dependent: :destroy

  def self.all_post
    return Post
  end
end
