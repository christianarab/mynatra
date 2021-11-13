require 'thor'
require 'mynatra'
require 'active_support/inflector'
require 'generators/scaffolding'
require 'generators/resource'
require 'helpers/helper.rb'

module Mynatra
  class CLI < Thor
    desc "new [NAME]", "Generates new mynatra project"
    def new(name)
      Mynatra::Generators::Scaffolding.start([name.singularize])
    end 
    
    desc "resource [NAME] [ARG1] [ARG2]", "Generates resources (`mynatra resource post title body`)"
    def resource(name, *attributes)
      Mynatra::Generators::Resource.start([ name.singularize, attributes ])
    end 
  end
end