class Menu_item
  attr_accessor :id

    attr_accessor :name

    attr_accessor :description

    attr_accessor :price

    attr_accessor :meal_type

  @@Menu_items = []
  @@count = 0

  def delete
    @@Menu_items.each_with_index do |menu_item, index|
      if self.id == menu_item.id
        @@Menu_items.delete_at(index)
      end
    end
  end

  def self.create(id)
    menu_item = Menu_item.new
    menu_item.id = id
    @@Menu_items << menu_item
  end

  def self.find_by_id(id)
    @@Menu_items.each do |menu_item|
      if menu_item.id == id
        return menu_item
      end
    end
  end

  def save
    if self.id.nil?
      self.id = new_id
      @@Menu_items.push(self)
    else
      self.id = self.id.to_i
      @@Menu_items.each_with_index do |menu_item, index|
        if self.id == menu_item.id
          @@Menu_items[index] = self
        end
      end
    end
  end

  def self.create_many
    @@Menu_items = (1..25).map do |num| 
      menu_item = Menu_item.new
      menu_item.id = "menu_item#{num}"
      menu_item
    end
  end

  def self.all
    @@Menu_items
  end

  def new_id
    @@count += 1
  end
end
