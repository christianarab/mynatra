Feature: Generators for Mynatra 

    Scenario: Mynatra resource [RESOURCE_NAME] [DIRECTORY DESTINATION]
        When I run `mynatra resource user destination`
        Then the following files should exist:
        | destination/models/user.rb |
        | destination/public/styles/main.css |
        | destination/app.rb |

    Scenario: Mynatra resource [RESOURCE_NAME] [DIRECTORY DESTINATION]
        When I run `mynatra resource blog blogapp`
        Then the following files should exist:
        | blogapp/models/blog.rb |
        | blogapp/public/styles/main.css |
        | blogapp/app.rb |