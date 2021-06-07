require 'thor/group'

# Mynatra resource generator
module Mynatra
  module Generators
    class Resource < Thor::Group
      include Thor::Actions

      # Takes resource name, arguments
      argument :name, type: :string
      argument :arg1, type: :string
      argument :arg2, type: :string

      # Generates model.rb file 
      def create_model
        template("models/model.erb", "models/#{name}.rb")
      end

      # Generate contoller.rb file
      def create_controller
        template("controllers/resource_controller.erb", "controllers/#{name}_controller.rb")
      end

      # Generate views erb files (index, edit, new)
      def create_views
        template("views/resource", "views/#{name}", :recursive => true)
      end

      # Sets source root directory
      def self.source_root
        File.dirname(__FILE__)
      end
    end
  end
end