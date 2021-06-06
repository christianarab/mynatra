require 'thor'
require 'mynatra'
require 'generators/user'
require 'generators/post'
require 'generators/comment'


module Mynatra
  class CLI < Thor
    desc "create [EMAIL]", "Creates a user within a class instance variable"
    def create_user(email)
       Mynatra::User.create(email)
    end

    desc "find [EMAIL]", "Finds and returns a user"
    def find_user(email)
      Mynatra::User.create(email)
      Mynatra::User.find_by_email(email)
    end

    desc "user", "Generate a User scaffolding"
    def users(group, name)
      Mynatra::Generators::User.start([group, name])
    end 

    desc "post", "Generate a User scaffolding"
    def posts(group, name)
      Mynatra::Generators::Post.start([group, name])
    end 

    desc "comment", "Generate a User scaffolding"
    def comments(group, name)
      Mynatra::Generators::Comment.start([group, name])
    end 
  end
end