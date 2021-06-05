require 'thor'
require 'mynatra'

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
  end
end