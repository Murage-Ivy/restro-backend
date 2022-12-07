# Restro-Backend

### Introduction
Restro-backend API is an application programming interface that provides data and information about restaurants, different dishes that the restaurants sell and the reviews that users have posted about the restaurants. 
<br/>


## Models identified and Relationships
* ```Restaurant has_many reviews ```
* ```Restaurant has_many foods```
* ```Review  belongs_to a restaurant ```
* ```Review belongs_to a user```
* ```Food belongs_to a restaurant```
* ```User has_many Reviews```

### Restaurant Features
* GET  details for all restaurants
```
[
{
"id": 1,
"name": "Cj's",
"address": "Nairobi, Kenya",
"rating": 3,
"like": false,
"image_url": "https://media-cdn.tripadvisor.com/media/photo-s/12/ba/6c/44/chicken-fajita-signature.jpg"
},
{
"id": 2,
"name": "ArtCaffe",
"address": "Nairobi, Kenya",
"rating": 1,
"like": false,
"image_url": "https://img.freepik.com/free-photo/banquet-table-with-snacks_144627-18361.jpg?w=740&t=st=1670329963~exp=1670330563~hmac=7bbb7233d5a0d02b85d79240b7c78597534c68b7e6671c39c6cfce6bef4a9f9e"
}
]
```
* GET a single restuarnt details and its foods.
```
{
"id": 1,
"name": "Cj's",
"image_url": "https://media-cdn.tripadvisor.com/media/photo-s/12/ba/6c/44/chicken-fajita-signature.jpg",
"description": "Our mission is to be a leader in the distribution and merchandising of food, pharmacy, health and personal care items, seasonal merchandise, and related products and services. We place considerable importance on forging strong supplier partnerships. Our suppliers, large or small, local or global, are essential components in accomplishing our mission.",
"foods": [
{
"id": 1,
"name": "Mushroom Risotto",
"price": 20,
"rating": 3,
"image_url": "https://img.freepik.com/free-photo/delicious-fried-chicken-plate_144627-27383.jpg?w=740&t=st=1669740082~exp=1669740682~hmac=f33a3ae6a83cab04fade4b1e4401572049d549905228ef5b6a1203455e193027",
"description": "Sit rerum sunt ex."
}
]
}
```
* If a restaurant does not exit a json data error is returned
```
{
"errors": [
"Restaurant not found"
]
}
```
* GET all details for all reviews for a single restaurant.
```
[
{
"id": 1,
"title": "Nesciunt consequatur molestiae sed.",
"comment": "Overall, the evening was a smash and I am so glad there is a new location closer to my office!!",
"user": {
"id": 1,
"username": "Moen",
"image_url": "https://img.freepik.com/free-photo/happy-african-woman-leather-vest-with-shiny-confetti-her-cheeks_23-2148747930.jpg?w=360&t=st=1669741072~exp=1669741672~hmac=629411b81402341781427587e66cddd0a5f40905a82533f14a243ab0a8c4daec"
}
}
]
```

### Installation Guide
* Clone this repository [here]
(https://github.com/Murage-Ivy/restro-backend).
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
| GET | /restaurants| To retrieve all restaurants|
| GET | /restaurants/:id | To retrieve a single restaurant and its foods|
| GET | /restaurants/:id/reviews| To retrieve details of all reviews for a single restaurant|
| POST | /restaurants/:id/reviews | To create a new review|
| DELETE| /restaurants/:id/reviews/:id| To delete a single review|
| POST | /login| To create a new login|
| POST | /signup| To create a new signed up user|
| GET | /me| To retrieve a logged in user|
| DELETE | /logout| To destroy a logged in user details|

### Future Updates
* Add routes and controller action for updating reviews 
* Add a route and controller action for adding new and updating restaurant and food 
* Add a route and controller action for admin login and sign up

### Technologies Used
* [Ruby on rails](https://guides.rubyonrails.org/) Rails is a web application development framework written in the Ruby programming language. It allows for installation and managing of dependencies and communication with databases.

### Authors
* [Ivy Murage](https://github.com/Murage-Ivy)

### License
This project is available for use under the MIT License.
