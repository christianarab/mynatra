require 'thor/group'

# Mynatra scaffolding generator
module Mynatra
  module Generators
    class Scaffolding < Thor::Group
      include Thor::Actions

      # Takes in dir, name arguments
      argument :name, type: :string
      class_option :api, type: :boolean

      # Generates directory
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
        if options[:api] == false
          directory("public", "#{name}/public", :recursive => true)
        end
      end

      # Generates views folder
      def create_views
        if options[:api] == false
          template("views/footer.erb", "#{name}/views/footer.erb")
          template("views/getting_started.erb", "#{name}/views/getting_started.erb")
          template("views/header.erb", "#{name}/views/header.erb")
        end
      end

      # Sets source root directory
      def self.source_root
        File.dirname(__FILE__)
      end
    end
  end
end

