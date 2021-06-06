Feature: Generators for Mynatra 

    Scenario: Mynatra resource [DIR] [RESOURCENAME]
        When I run `mynatra resource destination user`
        Then the following files should exist:
        | destination/models/user.rb |
        | destination/public/styles/main.css |