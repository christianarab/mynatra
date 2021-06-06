require 'thor/group'

# User generator
module Mynatra
  module Generators
    class User < Thor::Group
      include Thor::Actions

      argument :group, type: :string
      argument :name, type: :string

      # creates new directory - named by group
      def create_group
        empty_directory(group)
      end

      # generates user template folder to group
      def create_user
        directory "", "#{group}", :recursive => true
      end

      # defines source root
      def self.source_root
        File.dirname(__FILE__) + "/user"
      end
    end
  end
end
