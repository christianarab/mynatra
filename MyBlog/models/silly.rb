class Silly
  attr_accessor :id

  @@Sillys = []

  def delete
    @@Sillys.each_with_index do |silly, index|
      if self.id == silly.id
        @@Sillys.delete_at(index)
      end
    end
  end

  def self.create(id)
    silly = Silly.new
    silly.id = id
    @@Sillys << silly
  end

  def self.find_by_id(id)
    @@Sillys.each do |silly|
      if silly.id == id
        return silly
      end
    end
  end

  def save
    if self.id.nil?
      self.id = new_id
      @@Sillys.push(self)
    else
      self.id = self.id.to_i
      @@Sillys.each_with_index do |post, index|
        if self.id == silly.id
          @@Sillys[index] = self
        end
      end
    end
  end

  def self.create_many
    @@Sillys = (1..25).map do |num| 
      silly = Silly.new
      silly.id = "silly#{num}"
      silly
    end
  end

  def self.all
    @@Sillys
  end
end
