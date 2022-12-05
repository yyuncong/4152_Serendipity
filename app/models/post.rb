class Post < ActiveRecord::Base
  def self.posts_with_tag(tag)
    posts_with_tag = []
    Post.all.each do |post|
      if post.tags.split(" ").include? tag then
        posts_with_tag.append(post)
      end
    end
    return posts_with_tag
  end
end
