### API Practice ###

## Load the httr and jsonlite libraries for accessing data
library("httr")
library("jsonlite")

# What is the name of the first pokemon?
response <- GET("http://pokeapi.co/api/v2/pokemon/1")
body <- content(response,"text")
first_pokemon <- fromJSON(body)
first_pokemon$name

# What is pikachu's ID number?
response <- GET("http://pokeapi.co/api/v2/pokemon/pikachu")
body <- content(response,"text")
pikachu <- fromJSON(body)
pikachu$id

# What is the size of the "cheri" berry?
response <- GET("http://pokeapi.co/api/v2/berry/cheri")
body <- content(response,"text")
berry <- fromJSON(body)
berry$size

# How many pokemon are in the cave habitat?
response <- GET("http://pokeapi.co/api/v2/pokemon-habitat/cave")
body <- content(response,"text")
cave <- fromJSON(body)
length(cave$pokemon_species$name)
