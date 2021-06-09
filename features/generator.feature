Feature: Generators for Mynatra 

    Scenario: Mynatra new [PROJECT]
        When I run `mynatra new testblog`
        Then the following files should exist:
            | testblog/app.rb |
            | testblog/public/styles/main.css |
            | testblog/controllers/base_controller.rb |

    Scenario: Mynatra resource [RESOURCE_NAME] [*ARGUMENTS]
        When I run `mynatra resource post title body comment`
        Then the following files should exist:
            | views/posts/edit.erb |
            | controllers/posts_controller.rb |
            | models/posts.rb |