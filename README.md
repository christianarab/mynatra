```        
                     _|_          
.--.--. .  ..--. .-.  |  .--..-.  
|  |  | |  ||  |(   ) |  |  (   ) 
'  '  `-`--|'  `-`-'`-`-''   `-'`-
           ;                      
        `-'                       
```

> **mynatra** : the quick, and simple application framework. 
By Christian Arab, CompSci Academy Q2 Student

mynatra is a quick, and simple application framework. mynatra's simple command line interface allows easy creation of Ruby resource models with attributes, views, and controllers. 
mynatra can be used as a simple, site generator perfect for small personal projects and tasks. 

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'mynatra'
```

And then execute:

    $ bundle install

Or install it yourself as:

    $ gem install mynatra

## Usage

Install mynatra.

Access commands, and help through `mynatra --help`.

To generate a new mynatra project run `mynatra new [PROJECT NAME]`.

This will generate the following structure:

```
Project/
  |-app.rb
  |
  |-controllers/
  |
  |-base_controller.rb
  |
  |-views/
    |
    |-footer.erb
    |-getting_started.erb
    |-header.erb
  |
  |-public/
    |
    |-scripts/
      |
      |-main.js
    |-styles/
      |
      |-main.css
  |
  |-gemfile
```

To add a new resource run `mynatra resource [NAME OF RESOURCE] [ARG_1] [ARG_2] [...]`.

This will add controllers, models and views...

```
Project/
  |-app.rb
  |
  |-controllers/
  |
  |-RESOURCE_Controller.rb
  |-base_controller.rb
  |
  |-views/
    |
    |--RESOURCE/
    |   |-edit.erb
    |   |-index.erb
    |   |-new.erb
    |
    |-footer.erb
    |-getting_started.erb
    |-header.erb
  |
  |-public/
    |
    |-scripts/
      |
      |-main.js
    |-styles/
      |
      |-main.css
  |
  |-gemfile
```

## Contributing

Mynatra thrives off bug reports and pull requests. Please see https://github.com/christianarab/mynatra.
