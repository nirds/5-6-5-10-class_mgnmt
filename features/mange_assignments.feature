Feature: Manage Assignments
  In order to keep track of their assignments
  Students wants to create and edit assignments

Scenario: Home page has a new assignment link
  Given I am on the home page
  Then I should see "New Assignment"

Scenario: Create Assignment
  Given I am on the home page
  When I click "New Assignment"
    And I fill in "Title" with "Learn Cucumber"
    And I fill in "Details" with "Build a Feature and make it pass"
    And I click "Create Assignment"
  Then I should be on the home page
    And I should see "My Assignments"

Scenario: Finish an Assignment
  Given I have an "Assignment" with the "title" of "Learn Cucumber"
    And I am on the home page
  When I click "Learn Cucumber"
    And I check "Done"
    And I click "Update Assignment"
  Then I Should be on the home page
    And I should see "Completed Assignments"