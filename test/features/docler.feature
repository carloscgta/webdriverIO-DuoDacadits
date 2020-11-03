Feature: Docler Holding Regression Checks

        @REQ-UI-01@REQ-UI-03
        Scenario Outline: The Title in every page is "UI Testing Site"
            Given I am on the home Page
             When I navigate to <page> tab
             Then The Title of the page is "UI Testing Site"
              
        Examples:
                  | page 	      |
                  | UI Testing 	  |
                  | Home 	      |
                  | Form	      |
                  | Error	      |


        @REQ-UI-02
        Scenario Outline: The Title in every page is "UI Testing Site"
            Given I am on the home Page
             When I navigate to <page> tab
             Then The Title of the page is "UI Testing Site"
             Then the logo is visible
              
        Examples:
                  | page 	      |
                  | UI Testing 	  |
                  | Home 	      |
        

        @REQ-UI-03@REQ-UI-05@REQ-UI-06@REQ-UI-07@REQ-UI-08@REQ-UI-09@REQ-UI-10
        Scenario Outline: The text in every page should be expected
            Given I am on the home Page
             When I navigate to <page> tab
              And the following text should be visible "<Text>"

        Examples:
                  |page|Text|
                  |  UI Testing  | Welcome to the Docler Holding QA Department   |
                  |  Home  | Welcome to the Docler Holding QA Department   |
                  |  Home  |  This site is dedicated to perform some exercises and demonstrate automated web testing  |
                  |  Form  |  Simple Form Submission  |
                  |  Error  |  404 Error: File not found  |
            


        @REQ-UI-04
        Scenario: Click on the Home Button to activate the Active Status
            Given I am on the home Page
             When I navigate to Home tab
             Then I should get an Active Status

   
    
        @REQUI05
        Scenario: click in the Form Menu
            Given I am on the home Page
             When I navigate to Form tab
             Then I get navigated to the Form Page

        @REQUI07
        Scenario: click in the Error Button
            Given I am on the home Page
             When I navigate to Error tab
              And the following text should be visible "404 Error: File not found"

      
        @REQ-UI-11@REQ-UI-12
        Scenario Outline: on the Form Page type a value the input field and submit the form
            Given I am on the home Page
             When I navigate to Form tab
             When I type a <value> in the input field
             Then I get the following result <result>

        Examples:
                  | value 	| result 	|
                  | John 	|Hello John! |
                  | Sophia 	| Hello Sophia!|
                  | Charlie	| Hello Charlie! |





