puts "Cleaning up the DB"

# Order is important since there are foreign keys
Order.destroy_all
OrderItem.destroy_all
Meal.destroy_all
Chef.destroy_all
Restaurant.destroy_all
MealCategory.destroy_all
Category.destroy_all
User.destroy_all


### Categories
puts "Creating categories..."

require 'csv'
filepath = 'db/categories.csv'

CSV.foreach(filepath) do |row|
  Category.create(name: row.first)
end


### Restaurants
puts "Creating restaurants..."

require "open-uri"

### City 1
file1 = URI.open('https://images.pexels.com/photos/262978/pexels-photo-262978.jpeg?cs=srgb&dl=articoli-per-la-tavola-cameriera-cameriere-carne-262978.jpg&fm=jpg')
restaurant1 = Restaurant.create(name: "Freya", address: "Torstraße 180, 10115 Berlin", city: "Berlin", description: "Zero waste vegan restaurant offering a wide range of fresh and locally sourced products.")
restaurant1.photo.attach(io: file1, filename: 'freya.jpg', content_type: 'image/jpg')

file2 = URI.open('https://images.unsplash.com/photo-1549488344-1f9b8d2bd1f3?ixlib=rb-1.2.1&auto=format&fit=crop&w=1050&q=80')
restaurant2 = Restaurant.create(name: "Lemongrass", address: "Simon-Dach-Straße 2, 10245 Berlin", city: "Berlin", description: "One of the best Thai places in the city with an authentic Pad-Thai recipe.")
restaurant2.photo.attach(io: file2, filename: 'lemongrass.jpg', content_type: 'image/jpg')

file3 = URI.open('https://images.unsplash.com/photo-1498654896293-37aacf113fd9?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1050&q=80')
restaurant3 = Restaurant.create(name: "Papa Pane", address: "Ackerstraße 23, 10115 Berlin", city: "Berlin", description: "Authentic Italian food in the heart of Berlin! The best Napoli style pizza!")
restaurant3.photo.attach(io: file3, filename: 'papapane.jpg', content_type: 'image/jpg')

# ### City 2

# Restaurant.create(name: "Restaurant 3", address: "Street 4", city: "Hamburg", description: "awesome place with great food")

# Restaurant.create(name: "Restaurant 4", address: "Street 4", city: "Hamburg", description: "awesome place with great food")


# ### City 3

# Restaurant.create(name: "Restaurant 5", address: "Street 4", city: "Stuttgart", description: "awesome place with great food")

# Restaurant.create(name: "Restaurant 6", address: "Street 4", city: "Stuttgart", description: "awesome place with great food")


# ### Restaurant City 4

# Restaurant.create(name: "Restaurant 7", address: "Street 4", city: "Dortmund", description: "awesome place with great food")

# Restaurant.create(name: "Restaurant 8", address: "Street 4", city: "Dortmund", description: "awesome
# place with great food")


puts "Creating chefs..."

# Chef 1
image1 = URI.open('https://images.pexels.com/photos/887827/pexels-photo-887827.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940')
chef1 = Chef.create(first_name: "Martin", last_name: "Oliver", bio: "Learned how to cook when travelling all over the world. Now I want to make the world a better place so I started cooking vegan food and I work by the zero-waste principle. ")
chef1.photo.attach(io: image1, filename: 'martin.jpg', content_type: 'image/jpg')
# Chef 2

image2 = URI.open('https://images.pexels.com/photos/3814446/pexels-photo-3814446.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940')
chef2 = Chef.create(first_name: "Christian", last_name: "Mayer", bio: "I lived in Thailand for a few years and fell in love with the cuisine there. When I moved back to Germany I wanted to bring some of it back.")
chef2.photo.attach(io: image2, filename: 'christian.jpg', content_type: 'image/jpg')
# Chef 3

image3 = URI.open('https://images.unsplash.com/photo-1578738288760-05ce9be719d3?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1052&q=80')
chef3 = Chef.create(first_name: "Laura", last_name: "Veronese", bio: "Berlin is like a little Italy. I wanted to make sure everyone knows that Italian food is the best!")
chef3.photo.attach(io: image3, filename: 'laura.jpg', content_type: 'image/jpg')
# # Chef 4

# Chef.create(first_name: "Werner", last_name: "Meyer", bio: "lived, worked and cooked somewhere else before")

# # Chef 5

# Chef.create(first_name: "Toni", last_name: "Tortelloni", bio: "lived, worked and cooked somewhere else before")

# # Chef 6

# Chef.create(first_name: "Marta", last_name: "Margarita", bio: "lived, worked and cooked somewhere else before")

# # Chef 7

# Chef.create(first_name: "Lisa", last_name: "Lasagna", bio: "lived, worked and cooked somewhere else before")

# # Chef 8

# Chef.create(first_name: "Tanja", last_name: "Spatula", bio: "lived, worked and cooked somewhere else before")


#### Meals
puts "Creating meals..."

# Meals Chef 1 / Restaurant 1

photo1 = URI.open('https://images.pexels.com/photos/769969/pexels-photo-769969.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940')
meal1 = Meal.create(name: "Agnolotti", difficulty: 4, prep_time: 120, price: 25, description: "Vegan Agnolotti with freshly picked mushrooms.", restaurant: Restaurant.first, chef: Chef.first)
meal1.photo.attach(io: photo1, filename: 'agnolotti.jpg', content_type: 'image/jpg')

photo2 = URI.open('https://images.pexels.com/photos/1374586/pexels-photo-1374586.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940')
meal2 = Meal.create(name: "Flatbread", difficulty: 2, prep_time: 120, price: 15, description: "Flatbread made with locally sourced flour.", restaurant: Restaurant.first, chef: Chef.first)
meal2.photo.attach(io: photo2, filename: 'flatbread.jpg', content_type: 'image/jpg')

# Meals Chef 2 / Restaurant 2
photo3 = URI.open('https://images.unsplash.com/photo-1559314809-0d155014e29e?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1050&q=80')
meal3 = Meal.create(name: "Pad Thai", difficulty: 3, prep_time: 120, price: 15, description: "Spicy Thai-style fried noodles with peanuts and soy sprouts.", restaurant: Restaurant.second, chef: Chef.second)
meal3.photo.attach(io: photo3, filename: 'padthai.jpg', content_type: 'image/jpg')

photo4 = URI.open('https://images.pexels.com/photos/539451/pexels-photo-539451.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940')
meal4 = Meal.create(name: "Tom Kha Kai", difficulty: 2, prep_time: 120, price: 13, description: "Thai chicken coconut soup with coriander.", restaurant: Restaurant.second, chef: Chef.second)
meal4.photo.attach(io: photo4, filename: 'soup.jpg', content_type: 'image/jpg')
# Meals Chef 3 / Restaurant 3

photo5 = URI.open('https://images.pexels.com/photos/1256875/pexels-photo-1256875.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=940')
meal5 = Meal.create(name: "Tagliatelle al salmone e basilico", difficulty: 4, prep_time: 60, price: 10, description: "Our homemade tagliatelle with fresh slamon from the coast of Denmark.", restaurant: Restaurant.third, chef: Chef.third)
meal5.photo.attach(io: photo5, filename: 'tagliatelle.jpg', content_type: 'image/jpg')

photo6 = URI.open('https://images.pexels.com/photos/1437267/pexels-photo-1437267.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940')
meal6 = Meal.create(name: "Penne all'arrabbiata", difficulty: 3, prep_time: 120, price: 10, description: "Delicious penne with sauce made from the best local tomatoes.", restaurant: Restaurant.third, chef: Chef.third)
meal6.photo.attach(io: photo6, filename: 'penne.jpg', content_type: 'image/jpg')
# # Meals Chef 4

# Meal.create(name: "Pad Thai", difficulty: 3, prep_time: 120, price: 10, description: "Really delicious and you should totally make this at home", restaurant: Restaurant.all.fourth, chef: Chef.all.fourth)

# Meal.create(name: "Fabolous food", difficulty: 2, prep_time: 60, price: 10, description: "Really delicious and you should totally make this at home", restaurant: Restaurant.all.fourth, chef: Chef.all.fourth)

# # Meals Chef 5

# Meal.create(name: "Yummy Tummy", difficulty: 3, prep_time: 120, price: 10, description: "Really delicious and you should totally make this at home", restaurant: Restaurant.all.fifth, chef: Chef.all.fifth)
# Meal.create(name: "Yummy Tummy", difficulty: 4, prep_time: 120, description: "Really delicious and you should totally make this at home", restaurant: Restaurant.all.fifth, chef: Chef.all.fifth)

# # Meals Chef 6

# Meal.create(name: "Very Good Cake", difficulty: 2, prep_time: 120, description: "Really delicious and you should totally make this at home", restaurant: Restaurant.find_by(name: "Restaurant 6"), chef: Chef.find_by(first_name: "Marta"))


# Meal.create(name: "Scrumptious Sate", difficulty: 3, prep_time: 120, price: 10, description: "Really delicious and you should totally make this at home", restaurant: Restaurant.find_by(name: "Restaurant 6"), chef: Chef.find_by(first_name: "Marta"))

# Meal.create(name: "Delicious Dorrito", difficulty: 3, prep_time: 120, price: 10, description: "Really delicious and you should totally make this at home", restaurant: Restaurant.find_by(name: "Restaurant 6"), chef: Chef.find_by(first_name: "Marta"))

# # Meals Chef 7

# Meal.create(name: "Tomato à la Toni", difficulty: 3, prep_time: 120, price: 10, description: "Really delicious and you should totally make this at home", restaurant: Restaurant.find_by(name: "Restaurant 7"), chef: Chef.find_by(first_name: "Lisa"))

# Meal.create(name: "Delicious Dorrito", difficulty: 1, prep_time: 120, description: "Really delicious and you should totally make this at home", restaurant: Restaurant.find_by(name: "Restaurant 6"), chef: Chef.find_by(first_name: "Marta"))

# # Meals Chef 7


# Meal.create(name: "Adventorous Avocado", difficulty: 3, prep_time: 120, price: 10, description: "Really delicious and you should totally make this at home", restaurant: Restaurant.find_by(name: "Restaurant 7"), chef: Chef.find_by(first_name: "Lisa"))

# # Meals Chef 8

# Meal.create(name: "Aspiring Asparagus", difficulty: 3, prep_time: 120, price: 10, description: "Really delicious and you should totally make this at home", restaurant: Restaurant.find_by(name: "Restaurant 8"), chef: Chef.find_by(first_name: "Tanja"))

# Meal.create(name: "Potential Potato", difficulty: 3, prep_time: 120, price: 10, description: "Really delicious and you should totally make this at home", restaurant: Restaurant.find_by(name: "Restaurant 8"), chef: Chef.find_by(first_name: "Tanja"))


#### Meal Categories
puts "Creating meal categories..."


20.times do
  MealCategory.create(meal: Meal.all.sample, category_id: Category.all.sample.id)
end

#### Reviews
puts "Creating reviews..."

5.times do
  Review.create(content: "Really liked it, great meal", rating: 5, order: Order.all.sample)
end

### User
puts "Creating user..."

user = User.new
user.first_name = "Test"
user.last_name = "Test"
user.email = 'test@example.com'
user.password = '123456'
user.password_confirmation = '123456'
user.save!

puts "Finished!"
