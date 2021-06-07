require 'thor'
require 'mynatra'
require 'generators/scaffolding'

module Mynatra
  class CLI < Thor
    # desc "resource [RESOURCE_NAME] [DIRECTORY DESTINATION]", "Generate a resource"
    # def resource(name, dir)
    #   Mynatra::Generators::Resource.start([name, dir])
    # end 
    desc "new [NAME]", "Generate a resource"
    def new(name)
      Mynatra::Generators::Scaffolding.start([name])
    end 
  end
end