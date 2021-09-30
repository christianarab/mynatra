class Post
  attr_accessor :id
  attr_accessor :title
  attr_accessor :body

  @@posts = []
  @@count = 0

  def delete
    @@posts.each_with_index do |post, index|
      if self.id == post.id
        @@posts.delete_at(index)
      end
    end
  end

  def self.create(id)
    post = Post.new
    post.id = id
    @@posts << post
  end

  def self.find_by_id(id)
    @@posts.each do |post|
      if post.id == id
        return post
      end
    end
  end

  def save
    if self.id.nil?
      self.id = new_id
      @@posts.push(self)
    else
      self.id = self.id.to_i
      @@posts.each_with_index do |post, index|
        if self.id == post.id
          @@posts[index] = self
        end
      end
    end
  end

  def self.create_many
    @@posts = (1..25).map do |num| 
      post = Post.new
      post.id = "post#{num}"
      post
    end
  end

  def self.all
    @@posts
  end

  def new_id
    @@count += 1
  end
end
