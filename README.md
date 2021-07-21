```        
                     _|_          
.--.--. .  ..--. .-.  |  .--..-.  
|  |  | |  ||  |(   ) |  |  (   ) 
'  '  `-`--|'  `-`-'`-`-''   `-'`-
           ;                      
        `-'       
the easy to use framework.              
```

By Christian Arab, CompSci Academy Q2 Student

## What is mynatra?

mynatra's simple command line interface allows easy creation of Ruby resource models with attributes, views, and controllers. 
mynatra can be used as a simple, site generator perfect for small personal projects and tasks. 

mynatra's dependancies include:

```ruby
gem "activesupport"
gem "sinatra"
gem "thor"
```

## Creating a Blog with Mynatra

### 1. Create a new project

Run the following line to generate a mynatra project:

```bash
mynatra new blog
```
This will establish a new mynatra project in teh blog directory with the following structure:

```bash
# File structure

blog
├── app.rb
├── controllers
│   └── base_controller.rb
├── public
│   ├── scripts
│   │   └── main.js
│   └── styles
│       └── main.css
└── views
    ├── footer.erb
    ├── getting_started.erb
    └── header.erb
```

Start your Sinatra-based mynatra project by switching to the folder and run the following  

```bash
$ ruby app.rb
```

### 2. Add blog resources to your project 

To add resource models to your mynatra project. 
Run the following on the working directory:

```bash
$ mynatra resource post title body
```

This line tells mynatra to generate models, controllers, and basic views for the resource of `post` with the attributes of title and body.

```bash
# File structure

blog
├── app.rb
├── controllers
│   ├── base_controller.rb
│   └── post_controller.rb
├── models
│   └── post.rb 
├── public
│   ├── scripts
│   │   └── main.js
│   └── styles
│       └── main.css
└── views
    ├── footer.erb
    ├── getting_started.erb
    ├── header.erb
    └── posts
        ├── edit.erb
        ├── index.erb
        └── new.erb
```
```ruby
# blog/models/post.rb

class Post
  attr_accessor :id
  attr_accessor :title
  attr_accessor :body

  @@Posts = []
  @@count = 0

  def delete
    @@Posts.each_with_index do |post, index|
      if self.id == post.id
        @@Posts.delete_at(index)
      end
    end
  end

  def self.create(id)
    post = Post.new
    post.id = id
    @@Posts << post
  end

  def self.find_by_id(id)
    @@Posts.each do |post|
      if post.id == id
        return post
      end
    end
  end

  ...
```
```html
# blog/views/posts/new.erb 
  ...

  <h1>New Post</h1>
  <form method='POST' action='/posts/create'>
  
      <p>title:
        <input name='title'><br>
  
      <p>body:
        <input name='body'><br>
          <input type='submit'>
  ...
```
### 3. Create an instance of 'post'

Congratulations! At this point you are able to instantiate a blog post. First make sure your Sinatra server is up and running by using `ruby app.rb` in working directory.

Next navigate to the 'new' page/view of your post resource. You should be able to create a new instance of post with the input text for 'title' and 'body'.

The 'index' view will allow you to display all instances and select an individual point for editing.

The 'edit' view allows you to manipulate the values, or delete a post.

## Additional information

###  Contributing

Mynatra thrives off bug reports and pull requests.
Please see https://github.com/christianarab/mynatra.
