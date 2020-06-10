puts "Cleaning up the DB"

# Order is important since there are foreign keys
Review.destroy_all
Order.destroy_all
OrderItem.destroy_all
Meal.destroy_all
Step.destroy_all
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
file1 = URI.open('https://images.unsplash.com/photo-1564758866811-4780aa0a1f49?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1050&q=80')
file5 = URI.open('https://image.flaticon.com/icons/png/512/123/123954.png')
restaurant1 = Restaurant.create(name: "Frea", address: "Torstraße 180, 10115 Berlin", city: "Berlin", description: "Spare, modern restaurant serving plant-based, organic fare prepared with zero-waste practices. We realized that making good food is not enough for our customers and we wanted to take an active role in saving the planet.", cuisine: "Fusion")
restaurant1.photos.attach(io: file1, filename: 'frea.jpg', content_type: 'image/jpg')
restaurant1.photos.attach(io: file5, filename: 'vegan.jpg', content_type: 'image/jpg')

file2 = URI.open('https://images.unsplash.com/photo-1498654896293-37aacf113fd9?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1050&q=80')
file6 = URI.open('https://image.freepik.com/free-vector/luxurious-thai-pattern-with-golden-style_23-2147897288.jpg')
restaurant2 = Restaurant.create(name: "Lemongrass", address: "Simon-Dach-Straße 2, 10245 Berlin", city: "Berlin", description: "One of the best Thai places in the city with an authentic Pad-Thai recipe. Our recipes were created with a lot of care and attention by our amazing chef who has dedicated his life to exploring the best food in the world.", cuisine: "Thai")
restaurant2.photos.attach(io: file2, filename: 'lemongrass.jpg', content_type: 'image/jpg')
restaurant2.photos.attach(io: file6, filename: 'thai_pattern.jpg', content_type: 'image/jpg')

file3 = URI.open('https://images.pexels.com/photos/9315/menu-restaurant-france-eating-9315.jpg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940')
file7 = URI.open('https://image.freepik.com/free-vector/restaurant-chef-character_23-2147518935.jpg')
restaurant3 = Restaurant.create(name: "Papa Pane", address: "Ackerstraße 23, 10115 Berlin", city: "Berlin", description: "Authentic Italian food in the heart of Berlin! The best Napoli style pizza! Italian food is the best food in the world and we want to spread the joy that it brings also to other places.", cuisine: "Italian")
restaurant3.photos.attach(io: file3, filename: 'papapane.jpg', content_type: 'image/jpg')
restaurant3.photos.attach(io: file7, filename: 'italian_logo.jpg', content_type: 'image/jpg')

file4 = URI.open('https://images.unsplash.com/photo-1551632436-cbf8dd35adfa?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1051&q=80')
file8 = URI.open('https://image.freepik.com/free-vector/white-abstract-background-paper-style_23-2148389998.jpg')
restaurant4 = Restaurant.create(name: "Schneeweiß", address: "Simplonstraße 16, 10245 Berlin", city: "Berlin", description: "Stylish restaurant serving Alpine cuisine in the trendy neighbourhood of Friedrichshain. You don't need to travel to Austria to be able to eat one of the best schnitzel in the world.", cuisine: "Alpine")
restaurant4.photos.attach(io: file4, filename: 'schneeweiss.jpg', content_type: 'image/jpg')
restaurant4.photos.attach(io: file8, filename: 'snow_logo.jpg', content_type: 'image/jpg')

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

photo1 = URI.open('https://storage.needpix.com/rsynced_images/tortelloni-2963581_1280.jpg')
meal1 = Meal.create(name: "Agnolotti", difficulty: 3, prep_time: 80, price: 25, description: "Vegan Agnolotti with freshly picked mushrooms.", restaurant: Restaurant.first, chef: Chef.first, menu_type: "Main Dish", video: 'https://player.vimeo.com/video/371813808')
meal1.photo.attach(io: photo1, filename: 'agnolotti.jpg', content_type: 'image/jpg')



photo2 = URI.open('https://images.pexels.com/photos/1374586/pexels-photo-1374586.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940')
meal2 = Meal.create(name: "Flatbread", difficulty: 2, prep_time: 75, price: 15, description: "Flatbread made with locally sourced flour.", restaurant: Restaurant.first, chef: Chef.first, menu_type: "Starter")
meal2.photo.attach(io: photo2, filename: 'flatbread.jpg', content_type: 'image/jpg')

photo7 = URI.open('https://images.unsplash.com/photo-1547592180-85f173990554?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1050&q=80')
meal7 = Meal.create(name: "Quinoa with green beans", difficulty: 2, prep_time: 40, price: 21, description: "Tasty quino with green beans and cherry tomatoes.", restaurant: Restaurant.first, chef: Chef.first, menu_type: "Main Dish")
meal7.photo.attach(io: photo7, filename: 'quinoa.jpg', content_type: 'image/jpg')


# Meals Chef 2 / Restaurant 2
photo3 = URI.open('https://images.unsplash.com/photo-1559314809-0d155014e29e?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1050&q=80')
meal3 = Meal.create(name: "Pad Thai", difficulty: 3, prep_time: 100, price: 15, description: "Spicy Thai-style fried noodles with peanuts and soy sprouts.", restaurant: Restaurant.second, chef: Chef.second, menu_type: "Main Dish")
meal3.photo.attach(io: photo3, filename: 'padthai.jpg', content_type: 'image/jpg')

photo4 = URI.open('https://images.pexels.com/photos/539451/pexels-photo-539451.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940')
meal4 = Meal.create(name: "Tom Kha Kai", difficulty: 2, prep_time: 120, price: 13, description: "Thai chicken coconut soup with coriander.", restaurant: Restaurant.second, chef: Chef.second, menu_type: "Main Dish")
meal4.photo.attach(io: photo4, filename: 'soup.jpg', content_type: 'image/jpg')
# Meals Chef 3 / Restaurant 3

photo5 = URI.open('https://images.pexels.com/photos/1256875/pexels-photo-1256875.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=940')
meal5 = Meal.create(name: "Tagliatelle al salmone e basilico", difficulty: 2, prep_time: 90, price: 10, description: "Our homemade tagliatelle with fresh slamon from the coast of Denmark.", restaurant: Restaurant.third, chef: Chef.third, menu_type: "Main Dish")
meal5.photo.attach(io: photo5, filename: 'tagliatelle.jpg', content_type: 'image/jpg')

photo6 = URI.open('https://images.pexels.com/photos/1437267/pexels-photo-1437267.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940')
meal6 = Meal.create(name: "Penne all'arrabbiata", difficulty: 1, prep_time: 60, price: 10, description: "Delicious penne with sauce made from the best local tomatoes.", restaurant: Restaurant.third, chef: Chef.third, menu_type: "Main Dish")
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

### Steps
puts "Creating steps..."

S1photo = URI.open('https://images.pexels.com/photos/9510/food-pizza-kitchen-recipe.jpg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260')
S1 = Step.create(name: "Step 1: for the Pasta Dough", content: "Combine flour, semolina, and salt in a small bowl.
    In a small bowl add the eggs and olive oil; whisk until combined.
    Pour the egg mixture into the well and grab a good ol’ fork.  Slowly incorporate the flour until the mixture is combined and start working with your hands.
    Slowly work until it forms a dough. Knead the dough until the dough feels similar to  play-doh.",
    meal: Meal.find_by(name: "Agnolotti"))
S1.photo.attach(io: S1photo, filename: 's1.jpg', content_type: 'image/jpg')


S2 = Step.create(name: "Step 2: for the Filling", content: "Place peeled and diced potatoes in a medium pot and fill with water until potatoes are just covered.
    Put on medium high heat and allow water to boil. Boil potatoes until a fork can poke through.
    Drain potatoes and mash until smooth. Add goat cheese, parmesan, milk, chives and  salt. Mix until well incorporated.",
    meal: Meal.find_by(name: "Agnolotti"))

S3photo = URI.open('https://images.unsplash.com/photo-1521732670659-b8c918da61dc?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1350&q=80')
S3 = Step.create(name: "Step 3: Making Agnolotti", content: "With your piping bag, pipe a long line of the potato filling along the bottom of the sheet leaving about 1/4 inch of space from the very bottom.
    Brush a small amount of egg wash above the piped potato on the pasta sheet.  Gently grab the quarter inch of space on the bottom and  fold over piped potato and roll one time.
    The egg wash will help seal the pasta and the piped potato should be wrapped in the thin pasta. ",
    meal: Meal.find_by(name: "Agnolotti"))
S3.photo.attach(io: S3photo, filename: 's3.jpg', content_type: 'image/jpg')

puts "Finished!"
