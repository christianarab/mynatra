class Menu
  attr_accessor :id

    attr_accessor :meal

  @@Menus = []
  @@count = 0

  def delete
    @@Menus.each_with_index do |menu, index|
      if self.id == menu.id
        @@Menus.delete_at(index)
      end
    end
  end

  def self.create(id)
    menu = Menu.new
    menu.id = id
    @@Menus << menu
  end

  def self.find_by_id(id)
    @@Menus.each do |menu|
      if menu.id == id
        return menu
      end
    end
  end

  def save
    if self.id.nil?
      self.id = new_id
      @@Menus.push(self)
    else
      self.id = self.id.to_i
      @@Menus.each_with_index do |menu, index|
        if self.id == menu.id
          @@Menus[index] = self
        end
      end
    end
  end

  def self.create_many
    @@Menus = (1..25).map do |num| 
      menu = Menu.new
      menu.id = "menu#{num}"
      menu
    end
  end

  def self.all
    @@Menus
  end

  def new_id
    @@count += 1
  end
end
