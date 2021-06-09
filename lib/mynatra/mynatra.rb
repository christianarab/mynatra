# frozen_string_literal: true

module Mynatra
  # Test class
  class User
    attr_accessor :email, :password
  
    @@Users = []
  
    def delete
      @@Users.each_with_index do |user, index|
        if self.email == user.email
          @@Users.delete_at(index)
        end
      end
    end
  
    def self.create(email)
      user = User.new
      user.email = email
      @@Users << user
    end
  
    def self.find_by_email(email)
      @@Users.each do |user|
        if user.email == email
          return user
        end
      end
    end
  
    def self.create_many
      @@Users = (1..25).map do |num| 
        user = User.new
        user.email = "user#{num}@example.com"
        user
      end
    end
  
    def self.all
      @@Users
    end
  end  
end
