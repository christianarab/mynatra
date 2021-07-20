require 'thor/group'

# Mynatra scaffolding generator
module Mynatra
  module Generators
    class Style < Thor::Group
      include Thor::Actions
      argument :name, type: :string
      # Generates bootstrap in header file
      def add_bootstrap
        template("views/bootheader.erb", "#{name}/views/header.erb")
      end

      # Sets source root directory
      def self.source_root
        File.dirname(__FILE__)
      end
    end
  end
end

