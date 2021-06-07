class Post
  attr_accessor :id

  @@Posts = []

  def delete
    @@Posts.each_with_index do |post, index|
      if self.id == post.id
        @@Posts.delete_at(index)
      end
    end
  end

  def self.create(id)
    post = Post.new
    post.id = id
    @@Posts << post
  end

  def self.find_by_id(id)
    @@Posts.each do |post|
      if post.id == id
        return post
      end
    end
  end

  def save
    if self.id.nil?
      self.id = new_id
      @@Posts.push(self)
    else
      self.id = self.id.to_i
      @@Posts.each_with_index do |post, index|
        if self.id == post.id
          @@Posts[index] = self
        end
      end
    end
  end

  def self.create_many
    @@Posts = (1..25).map do |num| 
      post = Post.new
      post.id = "post#{num}"
      post
    end
  end

  def self.all
    @@Posts
  end
end
