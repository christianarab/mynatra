class Post
  attr_accessor :email

  @@Posts = []

  def delete
    @@Posts.each_with_index do |post, index|
      if self.email == post.email
        @@Posts.delete_at(index)
      end
    end
  end

  def self.create(email)
    post = Post.new
    post.email = email
    @@Posts << post
  end

  def self.find_by_email(email)
    @@Posts.each do |post|
      if post.email == email
        return post
      end
    end
  end

  def self.create_many
    @@Posts = (1..25).map do |num| 
      post = Post.new
      post.email = "post#{num}@example.com"
      post
    end
  end

  def self.all
    @@Posts
  end
end
