Feature: Bing "Copilot" AI chatbot

  Rule: "Copilot" understands user input and returns accurate answers

    Scenario: Retrieve detailed information by direct command
      Given the user is on the "Copilot" chatbot page
      And the user is staring new topic
      When the user enters the prompt "provide detailed information about Prowly media monitoring module"
      Then the chatbot answers by providing information about key features, pricing and reviews regarding "Prowly media monitoring module"

    Scenario: Retrieve basic information by expressing complex user needs
      Given the user is on the "Copilot" chatbot page
      And the user is staring new topic
      When the user enters the prompt "I don't know anything about media monitoring, but I heard that Prowly recently released such functionality"
      Then the chatbot answers by providing basic information about "Prowly Media monitoring" module
      
    Scenario: Request more information on started topic
      Given the user is on the "Copilot" chatbot page
      And the chatbot provided basic information regarding "Prowly media monitoring module" in ongoing conversation
      When the user enters the prompt "pr0vide mor detile6 inofrm@tion"
      Then the chatbot answers by providing information about "Prowly Media monitoring" features
