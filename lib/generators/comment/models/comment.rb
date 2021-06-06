class Comment
  @@comments = []
  @@count = 0

  attr_accessor :body, :author, :upvotes, :downvotes, :post_id, :gen_id

  def save
    if self.gen_id.nil?
      self.gen_id = gen_id
    else
      @@comment.each_with_index do |comment, index|
        if self.gen_id == comment.gen_id
          @@comment[index] = self
        end
      end
    end
  end

  def upvote
    self.upvotes += 1
  end

  def downvote
    self.downvotes += 1
  end

  def delete
    @@comments.each_with_index do |comment, index|
      if comment.gen_id == self.gen_id
        @@comments.delete_at index
      end
    end
  end

  def self.find(id)
    all.each do |comment|
      return comment if comment.gen_id == id
    end
  end

  def self.sample_comments(postid)
    @@comments = (1..25).map do |num| 
      comment = Comment.new
      comment.post_id = postid
      comment.gen_id = rand(100..300)
      comment.author = "#{num}"
      comment.body = "Wow! pork belly tumeric live-edge four loko retro schlitz. Street art photo booth enim cray, mlkshk twee affogato."
      comment.upvotes = 0
      comment.downvotes = 0
      comment
    end
  end

  def save
    @@comments << self
  end

  def self.all
    @@comments
  end

  def self.gen_id
    @@count += 1
  end
end
