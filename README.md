# Heros

### Introduction
The heros API is an application programming interface that provides data and information about a list of heros.
<br/>
This includes details about their  powers, and also their strengths .

## Models identified and Relationships
* ```Hero has_many powers through heropowers```
* ```Power has_many heros through heropowers```
* ```heropower belongs_to hero and belongs_to power```


### Heros Features
* GET all details for all heroes
```
[
{
"id": 1,
"name": "Rosendo Leffler",
"super_name": "Shuga Cain"
},
{
"id": 2,
"name": "Thaddeus Collier",
"super_name": "Nina West"
}
]
```
* GET a single hero details and its powers.
```
{
"id": 2,
"name": "Thaddeus Collier",
"super_name": "Nina West",
"powers": [
{
"id": 4,
"name": "Owen Greenholt",
"description": "Rem earum *dolores.* Suscipit et est. Veritatis adipisci fugiat."
},
{
"id": 2,
"name": "Gudrun Waelchi",
"description": "This is anamzing srength."
}
]
}
```
* If a hero does not exit a json data error is returned
```
{
"error": [
"Hero not found"
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
