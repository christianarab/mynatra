module Helpers
  module Parsers
    def self.check_args arg
      if arg.include? ":"
        arg, type = arg.split ":"
        {arg => type}
      else
        arg
      end
    end
  end
end