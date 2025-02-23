
Feature: Navigation bar
    Too see the subpages
    Without loggin in
    I can click the navigation bar links

    Background: I am on the Free Range Testers web without logging in
    Given I navigate to www.freerangetesters.com

     Scenario Outline: I can access the subpages through the navigation bar
     When I go to a <section> using the navigation bar
     Examples:
         | section   |
         | Cursos    |
         | Recursos  |
         | Blog      |
         | Mentorías |   
         | Udemy     |

    Scenario: Courses are presented correctly to potential customers
        When I go to Cursos using the navigation bar
        And I select Introduccion al Testing

    Scenario: Users can select a plan when signing up
        When I select Elegir plan
        Then I can validate the options in the checkout page