require 'thor'
require 'mynatra'

module Mynatra
  class CLI < Thor
    desc "create user [EMAIL]", "Creates a user within a class instance variable"
    def create_user(email)
      puts Mynatra::User.create(email)
    end
  end
end