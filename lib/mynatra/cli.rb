require 'thor'
require 'mynatra'
require 'active_support/inflector'
require 'generators/scaffolding'
require 'generators/resource'

module Mynatra
  class CLI < Thor
    desc "new [NAME]", "Generates new mynatra project"
    def new(name)
      Mynatra::Generators::Scaffolding.start([name.singularize])
    end 
    
    desc "resource [NAME] [ARG1] [ARG2]", "Generates resources (`mynatra resource post title body`)"
    def resource(name, *attributes)
      # Todo: Add logic for field and textarea
      # ... if ARG1:input, produce the corrosponding view element  
      # ... if ARG2:textarea, produce the corrosponding view element 
      attributes.each do |attribute|
        if attribute.include? ":"
          att, type = attribute.split(':')
          puts "This is the type: #{type}"
        end
      end
      puts "Generating #{name} model with attributes: #{attributes}"
      Mynatra::Generators::Resource.start([ name.singularize, attributes ])
    end 
  end
end