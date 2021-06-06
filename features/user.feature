Feature: User

    Scenario: User
        When I run `mynatra create email`
        Then the output should contain "User"

    Scenario: Find User by Email
        When I run `mynatra find email`
        Then the output should contain "User"