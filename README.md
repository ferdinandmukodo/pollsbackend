# Polls-Backend

### Introduction
You’re probably already aware that it can be hard to find the right restaurant and some times when you do and visit it, you find that it is not what you expected.You've been searching for a new restaurant to try, but it's hard to tell which ones are good. What if you could just go online and find them instantly?  

To solve this problem,  I have decided to create a restaurant finder app that helps people who are new to the area and looking for a good place to eat. Through sharing the restaurants details and also the food that they serve. You can judged how good the restaurant is from the reviews that users share.

In order to get information about different restaurantsand the dishes that they serve, I have create an api for faciliattng fetching of the data from the backend. Restro-backend.

Restro-backend API is an application programming interface that provides data and information about restaurants, different dishes that the restaurants sell and the reviews that users have posted about the restaurants. 

<br/>

## Models identified and Relationships
* ```Poll has_many question ```
* ```Question has_many Responses```
* ```Response  belongs_to a question ```
* ```Response belongs_to a user```
* ```Question belongs_to a poll```
* ```User has_many polls```

### Installation Guide
* Clone this repository [here]
(https://github.com/ferdinandmukodo/pollsbackend).
* After cloning ```cd <applicaction-repo>``` and  install all the dependencies by running:
```properties
Bundle install
```  
* This rails api has a seed file. Before seeding run migrations by doing:
```properties
rails db:migrate db:seed
``` 
### Usage
* Run server by running the following command on the terminal:
```properties
rails s 
```  
* Connect to the API using Postman on port 3000 to test the endpoints.


### API Endpoints
| HTTP Verbs | Endpoints | Action |
| --- | --- | --- |
| GET | /poll| To retrieve all poll|
| GET | /polls/:id | To retrieve a single poll and its response|
| GET | /poll/:id/question| To retrieve details of all question for a single poll|
| POST | /poll/:id/question | To create a new poll|

| POST | /login| To create a new login|
| POST | /signup| To create a new signed up user|
| GET | /me| To retrieve a logged in user|
| DELETE | /logout| To destroy a logged in user details|

### Future Updates
* Add routes and controller action for updating 
* Add a route and controller action for adding new and updating polls and question 
* Add a route and controller action for admin login and sign up

### Technologies Used
* [Ruby on rails](https://guides.rubyonrails.org/) Rails is a web application development framework written in the Ruby programming language. It allows for installation and managing of dependencies and communication with databases.

### Authors
* [Ferdinand Mukodo](https://github.com/ferdinandmukodo)
