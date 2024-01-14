Feature: Bing search engine
  
  Rule: Search engine is returning results relevant to the query
  
    Scenario: Perform a default search 
      Given the user is on the "Bing" search page
      And the "Search" tab is selected
      When the user enters the search query "Prowly media monitoring"
      And the user pushes "Enter" button
      Then a search results page with list containing "Prowly" website will be displayed
      And the list will contain subsites concerning of "Prowly media monitoring" module 
      And a "Prowly" information card will be displayed on the right side of the page

    Scenario: Perform a search with results filtered by category
      Given the user is on the "Bing" search page
      When the user enters the search query "Prowly media monitoring" 
      And the user click the "Images" category button
      Then a search results page containing thumbnails of images relevant to the "Prowly media monitoring" phrase will be displayed
      But a "Prowly" information card will not be displayed 

    Scenario: Change of the search category after sending the query
      Given the user is on the "Bing" search page
      And the results for "Prowly Media Monitoring" in "Images" category are shown 
      When the user clicks the "Maps" category button
      Then a map with the location of the "Prowly" office in the vicinity of the user will be displayed
      And a "Prowly" business card will be displayed on the left side of the page
