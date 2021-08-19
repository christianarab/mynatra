# TODO Refactor and create class abstractions
# create, delete, find, update
# store as hash (k, v)

class Base
  attr_reader :name, :arguments

  # example hash 
  @@TEMP = {}

  def initalize(name, ..args)
    @name = name
    @arguments = arguments
  end

# key: name, value(s): values 

  def self.create
    # run for each loop
    
    # @@TEMP << 
  end
end

# class Bicycle
#    2   attr_reader :size, :parts
#    3
#    4   def initialize(size:, parts:)
#    5     @size       = size
#    6     @parts      = parts
#    7   end
#    8
#    9   def spares
#   10     parts.spares
#   11   end
#   12 end 


## Creating a parts hierarchy (section 8.1.2)
## WHAT I LEARNT: initializing can be achived with "defaults" or "default class methods"
## Options can be also fed into a "post_initalize" method, that happens at the time of instanation

### EXAMPLE 

class Parts
   2   attr_reader :chain, :tire_size
   3
    # Note: initialize using several options -> taking arguments set as key (symbol) OR "default" method
    # Line 7: with each initalization there is a call with a method "post_initalize"
   4   def initialize(**opts)
   5     @chain      = opts[:chain]     || default_chain
   6     @tire_size  = opts[:tire_size] || default_tire_size
   7     post_initialize(opts)
   8   end
   # Line 12: merge into "local_spares"/ an empty hash
  10   def spares
  11     { chain:     chain,
  12       tire_size: tire_size }.merge(local_spares)
  13   end
  14
  15   def default_tire_size
  16     raise NotImplementedError
  17   end
  18

  # "post_initialize" method is created to later be overriden, after inheritance
  19   # subclasses may override
  20   def post_initialize(opts)
  21     nil
  22   end
  23
  24   def local_spares
  25     {}
  26   end
  # "default_chain" stringy 
  28   def default_chain
  29     "11-speed"
  30   end
  31 end

  






  33 class RoadBikeParts < Parts
  34   attr_reader :tape_color
  35
  36   def post_initialize(**opts)
  37     @tape_color = opts[:tape_color]
  38   end
  39
  40   def local_spares
  41     { tape_color: tape_color }
  42   end
  43
  44   def default_tire_size
  45     "23"
  46   end
  47 end
  