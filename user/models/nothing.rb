class Nothing
  attr_accessor :email

  @@Nothings = []

  def delete
    @@Nothings.each_with_index do |nothing, index|
      if self.email == nothing.email
        @@Nothings.delete_at(index)
      end
    end
  end

  def self.create(email)
    nothing = Nothing.new
    nothing.email = email
    @@Nothings << nothing
  end

  def self.find_by_email(email)
    @@Nothings.each do |nothing|
      if nothing.email == email
        return nothing
      end
    end
  end

  def self.create_many
    @@Nothings = (1..25).map do |num| 
      nothing = Nothing.new
      nothing.email = "nothing#{num}@example.com"
      nothing
    end
  end

  def self.all
    @@Nothings
  end
end
