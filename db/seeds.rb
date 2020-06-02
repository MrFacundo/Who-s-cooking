# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

### Restaurants City 1
Restaurant.create(name: "Restaurant 1", address: "Street 1", city: "Berlin", description: "awesome place with great food")

Restaurant.create(name: "Restaurant 2", address: "Street 2", city: "Berlin", description: "awesome place with great food")

Restaurant.create(name: "Restaurant 3", address: "Street 3", city: "Berlin", description: "awesome place with great food")

### Restaurants City 2

Restaurant.create(name: "Restaurant 4", address: "Street 4", city: "Hamburg", description: "awesome place with great food")

Restaurant.create(name: "Restaurant 5", address: "Street 4", city: "Hamburg", description: "awesome place with great food")

Restaurant.create(name: "Restaurant 6", address: "Street 4", city: "Hamburg", description: "awesome place with great food")

### Restaurants City 3

Restaurant.create(name: "Restaurant 8", address: "Street 4", city: "Stuttgart", description: "awesome place with great food")

Restaurant.create(name: "Restaurant 9", address: "Street 4", city: "Stuttgart", description: "awesome place with great food")

Restaurant.create(name: "Restaurant 10", address: "Street 4", city: "Stuttgart", description: "awesome place with great food")

### Restaurant City 4

Restaurant.create(name: "Restaurant 11", address: "Street 4", city: "Dortmund", description: "awesome place with great food")

Restaurant.create(name: "Restaurant 12", address: "Street 4", city: "Dortmund", description: "awesome 
place with great food")

Restaurant.create(name: "Restaurant 13", address: "Street 4", city: "Dortmund", description: "awesome place with great food")

# Chef 1

Chef.create(first_name: "Orlando", last_name: "Collender", bio: "lived, worked and cooked somewhere else before")

# Chef 2

Chef.create(first_name: "Claudio", last_name: "Delicioso", bio: "lived, worked and cooked somewhere else before")

# Chef 3

Chef.create(first_name: "Mary", last_name: "Littlelamb", bio: "lived, worked and cooked somewhere else before")

# Chef 4

Chef.create(first_name: "Werner", last_name: "Meyer", bio: "lived, worked and cooked somewhere else before")

# Chef 5

Chef.create(first_name: "Toni", last_name: "Tortelloni", bio: "lived, worked and cooked somewhere else before")

# Chef 6

Chef.create(first_name: "Marta", last_name: "Margarita", bio: "lived, worked and cooked somewhere else before")

# Chef 7

Chef.create(first_name: "Lisa", last_name: "Lasagna", bio: "lived, worked and cooked somewhere else before")

# Chef 8

Chef.create(first_name: "Tanja", last_name: "Spatula", bio: "lived, worked and cooked somewhere else before")

# Chef 9

Chef.create(first_name: "Doris", last_name: "Dumpling", bio: "lived, worked and cooked somewhere else before")

# Chef 10

Chef.create(first_name: "Martin", last_name: "Martini", bio: "lived, worked and cooked somewhere else before")

# Chef 11

Chef.create(first_name: "Anna", last_name: "Avocado", bio: "lived, worked and cooked somewhere else before")

# Chef 12

Chef.create(first_name: "Tim", last_name: "Tomato", bio: "lived, worked and cooked somewhere else before")

#### Meals

# Meals Chef 1

Meal.create(name: "Delicious dish", difficulty: 3, prep_time: 120, description: "Really delicious and you should totally make this at home", restaurant_id: 1, chef_id: 1)

Meal.create(name: "Funny Rice", difficulty: 3, prep_time: 120, description: "Really delicious and you should totally make this at home", restaurant_id: 1, chef_id: 1)

Meal.create(name: "Fabolous food", difficulty: 2, prep_time: 60, description: "Really delicious and you should totally make this at home", restaurant_id: 1, chef_id: 1)

# Meals Chef 2

Meal.create(name: "Yummy Tummy", difficulty: 3, prep_time: 120, description: "Really delicious and you should totally make this at home", restaurant_id: 2, chef_id: 2)

Meal.create(name: "Empty Plate", difficulty: 3, prep_time: 120, description: "Really delicious and you should totally make this at home", restaurant_id: 2, chef_id: 2)

# Meals Chef 3

Meal.create(name: "Fancy Food", difficulty: 2, prep_time: 60, description: "Really delicious and you should totally make this at home", restaurant_id: 3, chef_id: 3)

Meal.create(name: "Diet Bread", difficulty: 3, prep_time: 120, description: "Really delicious and you should totally make this at home", restaurant_id: 3, chef_id: 3)

# Meals Chef 4

Meal.create(name: "Pad Thai", difficulty: 3, prep_time: 120, description: "Really delicious and you should totally make this at home", restaurant_id: 4, chef_id: 4)

Meal.create(name: "Fabolous food", difficulty: 2, prep_time: 60, description: "Really delicious and you should totally make this at home", restaurant_id: 4, chef_id: 4)

# Meals Chef 5

Meal.create(name: "Yummy Tummy", difficulty: 3, prep_time: 120, description: "Really delicious and you should totally make this at home", restaurant_id: 5, chef_id: 5)

Meal.create(name: "Yummy Tummy", difficulty: 3, prep_time: 120, description: "Really delicious and you should totally make this at home", restaurant_id: 5, chef_id: 5)

Meal.create(name: "Yummy Tummy", difficulty: 3, prep_time: 120, description: "Really delicious and you should totally make this at home", restaurant_id: 5, chef_id: 5)

# Meals Chef 6

Meal.create(name: "Very Good Cake", difficulty: 3, prep_time: 120, description: "Really delicious and you should totally make this at home", restaurant_id: 6, chef_id: 6)

Meal.create(name: "Scrumptious Sate", difficulty: 3, prep_time: 120, description: "Really delicious and you should totally make this at home", restaurant_id: 6, chef_id: 6)

Meal.create(name: "Delicious Dorrito", difficulty: 3, prep_time: 120, description: "Really delicious and you should totally make this at home", restaurant_id: 6, chef_id: 6)

# Meals Chef 7

Meal.create(name: "Tomato à la Toni", difficulty: 3, prep_time: 120, description: "Really delicious and you should totally make this at home", restaurant_id: 7, chef_id: 7)

Meal.create(name: "Adventorous Avocado", difficulty: 3, prep_time: 120, description: "Really delicious and you should totally make this at home", restaurant_id: 7, chef_id: 7)

# Meals Chef 8 
Meal.create(name: "Aspiring Asparagus", difficulty: 3, prep_time: 120, description: "Really delicious and you should totally make this at home", restaurant_id: 8, chef_id: 8)

Meal.create(name: "Potential Potato", difficulty: 3, prep_time: 120, description: "Really delicious and you should totally make this at home", restaurant_id: 8, chef_id: 8)

Meal.create(name: "Romantic Ruccola", difficulty: 3, prep_time: 120, description: "Really delicious and you should totally make this at home", restaurant_id: 8, chef_id: 8)

Meal.create(name: "Awesome Aubergine", difficulty: 3, prep_time: 120, description: "Really delicious and you should totally make this at home", restaurant_id: 8, chef_id: 8)

# Meals Chef 9

Meal.create(name: "Chaotic Carrot", difficulty: 3, prep_time: 120, description: "Really delicious and you should totally make this at home", restaurant_id: 9, chef_id: 9)

Meal.create(name: "Brotherly Broccoli", difficulty: 3, prep_time: 120, description: "Really delicious and you should totally make this at home", restaurant_id: 9, chef_id: 9)

Meal.create(name: "Twisted Tortilla", difficulty: 3, prep_time: 120, description: "Really delicious and you should totally make this at home", restaurant_id: 9, chef_id: 9)

# Meals Chef 10

Meal.create(name: "Lazy Letuce", difficulty: 3, prep_time: 120, description: "Really delicious and you should totally make this at home", restaurant_id: 10, chef_id: 10)

Meal.create(name: "Pink Pepper", difficulty: 3, prep_time: 120, description: "Really delicious and you should totally make this at home", restaurant_id: 10, chef_id: 10)

# Meals Chef 11

Meal.create(name: "Massive Melon", difficulty: 3, prep_time: 120, description: "Really delicious and you should totally make this at home", restaurant_id: 11, chef_id: 11)

Meal.create(name: "Edgy Eggplant", difficulty: 3, prep_time: 120, description: "Really delicious and you should totally make this at home", restaurant_id: 11, chef_id: 11)

# Meals Chef 12

Meal.create(name: "Pretty Peperoni", difficulty: 3, prep_time: 120, description: "Really delicious and you should totally make this at home", restaurant_id: 12, chef_id: 12)

Meal.create(name: "Fancy Falaffel", difficulty: 3, prep_time: 120, description: "Really delicious and you should totally make this at home", restaurant_id: 12, chef_id: 12)







