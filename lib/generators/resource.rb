require 'thor/group'
require 'active_support/inflector'

# Mynatra resource generator
module Mynatra
  module Generators
    class Resource < Thor::Group
      include Thor::Actions

      # Takes resource name, arguments
      argument :name, type: :string
      argument :attributes, type: :array
      
      # Generates model.rb file 
      def create_model
        @name_singular = name.singularize
        @name_plural = name.pluralize
        @attributes = attributes
        template("models/model.erb", "models/#{name}.rb")
      end

      # Generate contoller.rb file
      def create_controller
        @name_singular = name.singularize
        @name_plural = name.pluralize
        @attributes = attributes
        template("controllers/resource_controller.erb", "controllers/#{name}_controller.rb")
      end

      # Generate views erb files (index, edit, new)
      def create_views
        @name_singular = name.singularize
        @name_plural = name.pluralize
        @attributes = attributes
        template("views/header.erb", "views/header.erb")
        template("views/resource/edit.erb", "views/#{@name_plural}/edit.erb")
        template("views/resource/index.erb", "views/#{@name_plural}/index.erb")
        template("views/resource/new.erb", "views/#{@name_plural}/new.erb")
      end

      # Sets source root directory
      def self.source_root
        File.dirname(__FILE__)
      end
    end
  end
end