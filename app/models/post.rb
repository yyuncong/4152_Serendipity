class Post < ActiveRecord::Base
  has_many :likes, dependent: :destroy

  def self.all_post
    return Post
  end
  def self.posts_with_tag(tag)
    posts_with_tag = []
    Post.all.each do |post|
      if post.tags.split(', ').include? tag then
        posts_with_tag.append(post)
      end
    end
    return posts_with_tag
  end

end