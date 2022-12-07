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
* GET all details for all powers.
```
[
{
"id": 1,
"name": "Rosette Jakubowski",
"description": "Id reiciendis nam. Qui ut sint. Aliquam voluptate *tempore.*"
},
{
"id": 3,
"name": "Freddy Wiza",
"description": "~Qui~ et rerum. Qui consequuntur expedita. Laborum molestias quam."
}
]
```
* GET a single power details
```
{
"id": 2,
"name": "Gudrun Waelchi",
"description": "This is anamzing srength."
}
```
* If a Power of a hero does not exist a json data error is returned
```
{
"error": [
"Power not found"
]
}
```
* UPDATE a power
```
Before Update
{
    "id": 1,
    "name": "Rosette Jakubowski",
    "description": "Id reiciendis nam. Qui ut sint. Aliquam voluptate *tempore.*"
}
```
* If there is a validation error it should be returned
```
{
    "erros": [
        "Description is too short (minimum is 20 characters)"
    ]
}
```
```
After Update
{
    "id": 1,
    "name": "Rosette Jakubowski",
    "description": "One that saves a lot pf people. One of the best powers"
}
```

* You can do a post request for a hero-powers.
```
{
    "id": 3,
    "name": "Sen. Lenard Kassulke",
    "super_name": "Detox",
    "powers": [
        {
            "id": 1,
            "name": "Rosette Jakubowski",
            "description": "One that saves a lot pf people. One of the best powers"
        }
    ]
}
```

### Installation Guide
* Clone this repository [here]
(https://github.com/Murage-Ivy/pizza-restaurant).
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
* Connect to the API using Postman on port 3000.


### API Endpoints
| HTTP Verbs | Endpoints | Action |
| --- | --- | --- |
| GET | /heros| To retrieve all heros|
| GET | /heros/:id | To retrieve a single hero and its powers|
| GET | /powers| To retrieve details of all powers|
| GET | /powers/:id | To retrieve a single power details|
| PATCH | /powers/:id | To update a single power description|
| POST | /hero_powers | To create a new heropower|


### Technologies Used
* [Ruby on rails](https://guides.rubyonrails.org/) Rails is a web application development framework written in the Ruby programming language. It allows for installation and managing of dependencies and communication with databases.

### Authors
* [Ivy Murage](https://github.com/Murage-Ivy)

### License
This project is available for use under the MIT License.
