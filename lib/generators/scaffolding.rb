require 'thor/group'

# Mynatra scaffolding generator
module Mynatra
  module Generators
    class Scaffolding < Thor::Group
      include Thor::Actions

      # Takes in dir, name arguments
      argument :name, type: :string

      # Generates empty directory
      def create_dir
        empty_directory(name)
      end
      
      # Generates app.rb file
      def create_app
        template("app.erb", "#{name}/app.rb")
      end

      # Generates controller
      def create_controller
        template("controllers/base_controller.erb", "#{name}/controllers/base_controller.rb")
      end

      # Generates public folder with CSS style sheet
      def create_public
        directory("public", "#{name}/public", :recursive => true)
      end

      # Sets source root directory
      def self.source_root
        File.dirname(__FILE__)
      end
    end
  end
end

