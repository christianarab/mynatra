class Work
  attr_accessor :id

  @@Works = []

  def delete
    @@Works.each_with_index do |work, index|
      if self.id == work.id
        @@Works.delete_at(index)
      end
    end
  end

  def self.create(id)
    work = Work.new
    work.id = id
    @@Works << work
  end

  def self.find_by_id(id)
    @@Works.each do |work|
      if work.id == id
        return work
      end
    end
  end

  def save
    if self.id.nil?
      self.id = new_id
      @@Works.push(self)
    else
      self.id = self.id.to_i
      @@Works.each_with_index do |post, index|
        if self.id == work.id
          @@Works[index] = self
        end
      end
    end
  end

  def self.create_many
    @@Works = (1..25).map do |num| 
      work = Work.new
      work.id = "work#{num}"
      work
    end
  end

  def self.all
    @@Works
  end
end
