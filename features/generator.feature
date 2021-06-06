Feature: Generate Templates for Mynatra User
    In order to generate User template for Mynatra
    As a CLI
    I want mynatra to generate the files for me

    Scenario: Recipes
        When I run `mynatra resource user`
        Then the following files should exist:
            | dinner/steak.txt |
        Then the file "dinner/steak.txt" should contain:
            """
            ##### Ingredients #####
            Ingredients for delicious steak go here.

            ##### Instructions #####
            Tips on how to make delicious steak go here.
            """