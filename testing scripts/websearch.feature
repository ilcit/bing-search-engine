Feature: Bing search engine with different filter values

 # Happy path, default bing.com search page
  Scenario: Perform a default search 
    Given the user is on the Bing search page
    And the default "Search" tab is selected
    When the user enters the search query "Prowly Media Monitoring"
    And the user pushes enter button
    Then the search results page containing a list of websites relevant to the query will be displayed
    And the "Prowly" business card will be displayed on the right side of the page

 # Happy path, switching category tabs after entering query phrase
  Scenario: Perform a search in "images" category
    Given the user is on the Bing search page
    When the user enters the search query "Prowly Media Monitoring" 
    And the user click the "images" category button
    Then the search results page containing thumbinails of images relevant to the query will be displayed
    But the "Prowly" business card will not be displayed on the right side of the page
