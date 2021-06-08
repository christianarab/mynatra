Feature: Generators for Mynatra 

    Scenario: Mynatra resource [RESOURCE_NAME] [DIRECTORY DESTINATION]
        When I run `mynatra resource post title body`
        Then the following files should exist:
            | models/post.rb |
            | public/styles/main.css |
            | app.rb |
        Then the file 'filename' contains:
            """
            block here of text
            """

    Scenario: Mynatra resource [RESOURCE_NAME] [DIRECTORY DESTINATION]
        When I run `mynatra resource blog blogapp`
        Then the following files should exist:
        | blogapp/models/blog.rb |
        | blogapp/public/styles/main.css |
        | blogapp/app.rb |