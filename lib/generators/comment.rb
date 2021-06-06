require 'thor/group'

# Comment generator
module Mynatra
  module Generators
    class Comment < Thor::Group
      include Thor::Actions

      argument :group, type: :string
      argument :name, type: :string

      # creates new directory - named by group
      def create_group
        empty_directory(group)
      end

      # generates user template folder to group
      def create_comment
        directory "", "#{group}", :recursive => true
      end

      # defines source root
      def self.source_root
        File.dirname(__FILE__) + "/comment"
      end
    end
  end
end
