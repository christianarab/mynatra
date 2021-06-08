class Resturant
  attr_accessor :id

    attr_accessor :name

    attr_accessor :location

    attr_accessor :manager

  @@Resturants = []
  @@count = 0

  def delete
    @@Resturants.each_with_index do |resturant, index|
      if self.id == resturant.id
        @@Resturants.delete_at(index)
      end
    end
  end

  def self.create(id)
    resturant = Resturant.new
    resturant.id = id
    @@Resturants << resturant
  end

  def self.find_by_id(id)
    @@Resturants.each do |resturant|
      if resturant.id == id
        return resturant
      end
    end
  end

  def save
    if self.id.nil?
      self.id = new_id
      @@Resturants.push(self)
    else
      self.id = self.id.to_i
      @@Resturants.each_with_index do |resturant, index|
        if self.id == resturant.id
          @@Resturants[index] = self
        end
      end
    end
  end

  def self.create_many
    @@Resturants = (1..25).map do |num| 
      resturant = Resturant.new
      resturant.id = "resturant#{num}"
      resturant
    end
  end

  def self.all
    @@Resturants
  end

  def new_id
    @@count += 1
  end
end
