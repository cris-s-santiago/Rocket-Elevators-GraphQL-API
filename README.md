Rocket_Elevators 🚀 Working with API (Application Programming Interface) 📈

Contributors

Kaelen Burroughs, Cristiane Santiago, Ahsan Syed Ali, Muyiwa Adetula

🎯 About Week 8 - This exercise is from the Week 8 of the "Odyssey" program offered by CodeBoxx. This code is written in c# and ruby on rails. The task this week is about offering and Exposing a Service on the Internet using Apllication Programming Interfaces (API's).

📌 Two approaches will be explored to expose these services:
REST API
GraphQL

📚 REST API: 
We need to develop a REST API using C # and .NET Core.

This API must be deployed on a Server in Azure and must establish a connection with the MySQL transactional database that serves the Ruby on Rails application.

📌 Queries to be run for the REST API

  1. Retrieving the current status of a specific Battery
  2. Changing the status of a specific Battery
  3. Retrieving the current status of a specific Column
  4. Changing the status of a specific Column
  5. Retrieving the current status of a specific Elevator
  6. Changing the status of a specific Elevator
  7. Retrieving a list of Elevators that are not in operation at the time of the request
  8. Retrieving a list of Buildings that contain at least one battery, column or elevator requiring intervention
  9. Retrieving a list of Leads created in the last 30 days who have not yet become customers.

  Configuration - 

  https://docs.microsoft.com/en-us/aspnet/core/tutorials/first-web-api?view=aspnetcore-3.1&tabs=visual-studio-code

  https://balramchavan.medium.com/setup-entity-framework-core-for-mysql-in-asp-net-core-2-5b40a5a3af94
                   
                   
  Ruby version - 2.6.6

  📚 A New Fact Table in our Decision System:

  A new fact table called “FACTIntervention” must be added to the model in the Postgres database.


 📚 GraphQL API:

  The task was to create a requestable API via GraphQl such that it is necessary to use another more suitable technology to restore the data coming from two  separate data sources in the same request.

  The Postgres decision database
  The MySQL operational database
  
  📌 Queries to be run for the GraphQL
  
  1. Retrieving the address of the building, the beginning and the end of the intervention for a specific intervention.
  2. Retrieving customer information and the list of interventions that took place for a specific building
  3. Retrieval of all interventions carried out by a specified employee with the buildings associated with these interventions including the details (Table           BuildingDetails) associated with these buildings.

  Configuration - 

  https://www.digitalocean.com/community/tutorials/how-to-set-up-a-ruby-on-rails-graphql-api

  https://www.howtographql.com/basics/2-core-concepts/
                
  https://evilmartians.com/chronicles/graphql-on-rails-1-from-zero-to-the-first-query
 
  📌 How to run the tests:

  https://app.getpostman.com/join-team?invite_code=f09613b7a24e69fef5524a5d3f5f434e&ws=1c76f8ec-a244-4f00-9317-ee95973e1306
  

