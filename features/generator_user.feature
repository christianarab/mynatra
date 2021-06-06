Feature: Generators for Mynatra 

    Scenario: Mynatra User
        When I run `mynatra user test test`
        Then the file "test/app.rb" should exist
        Then the file "test/views/users/index.erb" should exist
        Then the file "test/models/user.rb" should exist

    Scenario: Mynatra Post
        When I run `mynatra post test test`
        Then the file "test/app.rb" should exist
        Then the file "test/views/posts/index.erb" should exist
        Then the file "test/models/post.rb" should exist

    Scenario: Mynatra Comment
        When I run `mynatra comment test test`
        Then the file "test/app.rb" should exist
        Then the file "test/models/comment.rb" should exist