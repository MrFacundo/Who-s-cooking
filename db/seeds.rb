Restaurant.destroy_all
MealCategory.destroy_all
Meal.destroy_all
Category.destroy_all
Category.destroy_all


### Categories

require 'csv'
filepath = 'db/categories.csv'

CSV.foreach(filepath) do |row|
  Category.create(name: row.first)
end

### Restaurants City 1
Restaurant.create(name: "Restaurant 1", address: "Street 1", city: "Berlin", description: "awesome place with great food")

Restaurant.create(name: "Restaurant 2", address: "Street 2", city: "Berlin", description: "awesome place with great food")


### Restaurants City 2

Restaurant.create(name: "Restaurant 3", address: "Street 4", city: "Hamburg", description: "awesome place with great food")

Restaurant.create(name: "Restaurant 4", address: "Street 4", city: "Hamburg", description: "awesome place with great food")


### Restaurants City 3

Restaurant.create(name: "Restaurant 5", address: "Street 4", city: "Stuttgart", description: "awesome place with great food")

Restaurant.create(name: "Restaurant 6", address: "Street 4", city: "Stuttgart", description: "awesome place with great food")


### Restaurant City 4

Restaurant.create(name: "Restaurant 7", address: "Street 4", city: "Dortmund", description: "awesome place with great food")

Restaurant.create(name: "Restaurant 8", address: "Street 4", city: "Dortmund", description: "awesome
place with great food")


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


#### Meals

# Meals Chef 1

Meal.create(name: "Delicious dish", difficulty: 3, prep_time: 120, description: "Really delicious and you should totally make this at home", restaurant: Restaurant.all.first, chef: Chef.all.first)

Meal.create(name: "Funny Rice", difficulty: 3, prep_time: 120, description: "Really delicious and you should totally make this at home", restaurant: Restaurant.all.first, chef: Chef.all.first)


# Meals Chef 2

Meal.create(name: "Yummy Tummy", difficulty: 3, prep_time: 120, description: "Really delicious and you should totally make this at home", restaurant: Restaurant.all.second, chef: Chef.all.second)

Meal.create(name: "Empty Plate", difficulty: 3, prep_time: 120, description: "Really delicious and you should totally make this at home", restaurant: Restaurant.all.second, chef: Chef.all.second)

# Meals Chef 3

Meal.create(name: "Fancy Food", difficulty: 2, prep_time: 60, description: "Really delicious and you should totally make this at home", restaurant: Restaurant.all.third, chef: Chef.all.third)

Meal.create(name: "Diet Bread", difficulty: 3, prep_time: 120, description: "Really delicious and you should totally make this at home", restaurant: Restaurant.all.third, chef: Chef.all.third)

# Meals Chef 4

Meal.create(name: "Pad Thai", difficulty: 5, prep_time: 120, description: "Really delicious and you should totally make this at home", restaurant: Restaurant.all.fourth, chef: Chef.all.fourth)

Meal.create(name: "Fabolous food", difficulty: 2, prep_time: 60, description: "Really delicious and you should totally make this at home", restaurant: Restaurant.all.fourth, chef: Chef.all.fourth)

# Meals Chef 5

Meal.create(name: "Yummy Tummy", difficulty: 1, prep_time: 120, description: "Really delicious and you should totally make this at home", restaurant: Restaurant.all.fifth, chef: Chef.all.fifth)

Meal.create(name: "Yummy Tummy", difficulty: 3, prep_time: 120, description: "Really delicious and you should totally make this at home", restaurant: Restaurant.all.fifth, chef: Chef.all.fifth)

Meal.create(name: "Yummy Tummy", difficulty: 4, prep_time: 120, description: "Really delicious and you should totally make this at home", restaurant: Restaurant.all.fifth, chef: Chef.all.fifth)

# Meals Chef 6

Meal.create(name: "Very Good Cake", difficulty: 2, prep_time: 120, description: "Really delicious and you should totally make this at home", restaurant: Restaurant.find_by(name: "Restaurant 6"), chef: Chef.find_by(first_name: "Marta"))

Meal.create(name: "Scrumptious Sate", difficulty: 3, prep_time: 120, description: "Really delicious and you should totally make this at home", restaurant: Restaurant.find_by(name: "Restaurant 6"), chef: Chef.find_by(first_name: "Marta"))

Meal.create(name: "Delicious Dorrito", difficulty: 1, prep_time: 120, description: "Really delicious and you should totally make this at home", restaurant: Restaurant.find_by(name: "Restaurant 6"), chef: Chef.find_by(first_name: "Marta"))

# Meals Chef 7

Meal.create(name: "Tomato à la Toni", difficulty: 5, prep_time: 120, description: "Really delicious and you should totally make this at home", restaurant: Restaurant.find_by(name: "Restaurant 7"), chef: Chef.find_by(first_name: "Lisa"))

Meal.create(name: "Adventorous Avocado", difficulty: 3, prep_time: 120, description: "Really delicious and you should totally make this at home", restaurant: Restaurant.find_by(name: "Restaurant 7"), chef: Chef.find_by(first_name: "Lisa"))

# Meals Chef 8
Meal.create(name: "Aspiring Asparagus", difficulty: 2, prep_time: 120, description: "Really delicious and you should totally make this at home", restaurant: Restaurant.find_by(name: "Restaurant 8"), chef: Chef.find_by(first_name: "Tanja"))

Meal.create(name: "Potential Potato", difficulty: 3, prep_time: 120, description: "Really delicious and you should totally make this at home", restaurant: Restaurant.find_by(name: "Restaurant 8"), chef: Chef.find_by(first_name: "Tanja"))


#### Meal Categories


20.times do
  MealCategory.create(meal: Meal.all.sample, category_id: Category.all.sample.id)
end


#### Reviews

5.times do
  Review.create(content: "Really liked it, great meal", rating: 5)
end

### User

user = User.new
user.email = 'test@example.com'
user.password = '123456'
user.password_confirmation = '123456'
user.save!


