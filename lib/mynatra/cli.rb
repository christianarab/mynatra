require 'thor'
require 'mynatra'
require 'generators/scaffolding'
require 'generators/resource'

module Mynatra
  class CLI < Thor
    # desc "resource [RESOURCE_NAME] [DIRECTORY DESTINATION]", "Generate a resource"
    # def resource(name, dir)
    #   Mynatra::Generators::Resource.start([name, dir])
    # end 
    desc "new [NAME]", "Generate mynatra scaffolding"
    def new(name)
      Mynatra::Generators::Scaffolding.start([name])
    end 
    
    desc "resource [NAME] [ARG1] [ARG2]", "Generate a resource with 2 arguments i.e mynatra resource post title body"
    def resource(name, arg1, arg2)
      Mynatra::Generators::Resource.start([ name, arg1, arg2 ])
    end 

    # desc "resource [NAME] [ARG1]", "Generate a resource with 1 arguments i.e mynatra resource comment body"
    # def resource_1(name, arg1)
    #   Mynatra::Generators::Resource.start([ name, arg1 ])
    # end 

  end
end