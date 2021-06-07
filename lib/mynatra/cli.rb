require 'thor'
require 'mynatra'
require 'generators/resource'

module Mynatra
  class CLI < Thor
    desc "resource [RESOURCE_NAME] [DIRECTORY DESTINATION]", "Generate a resource"
    def resource(name, dir)
      Mynatra::Generators::Resource.start([name, dir])
    end 
  end
end