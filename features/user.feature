Feature: User
    In order to create or find users
    As a CLI
    I want users to generate them

    Scenario: User
        When I run `mynatra user email `
        Then the output should contain