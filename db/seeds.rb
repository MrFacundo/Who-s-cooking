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
restaurant1 = Restaurant.create(name: "Frea", address: "Torstraße 180, 10115 Berlin", city: "Berlin", description: "Spare, modern restaurant serving plant-based and vegetarian, organic food prepared with zero-waste practices. We realized that making good food is not enough for our customers and we wanted to take an active role in saving the planet.", cuisine: "Fusion")
restaurant1.photos.attach(io: file1, filename: 'frea.jpg', content_type: 'image/jpg')
restaurant1.photos.attach(io: file5, filename: 'vegan.jpg', content_type: 'image/jpg')

file2 = URI.open('https://images.unsplash.com/photo-1498654896293-37aacf113fd9?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1050&q=80')
file6 = URI.open('https://lemongrassbali.com/images/res.png')
restaurant2 = Restaurant.create(name: "Lemongrass", address: "Simon-Dach-Straße 2, 10245 Berlin", city: "Berlin", description: "One of the best Thai places in the city with an authentic Pad-Thai recipe. Our recipes were created with a lot of care and attention by our amazing chef who has dedicated his life to exploring the best food in the world.", cuisine: "Thai")
restaurant2.photos.attach(io: file2, filename: 'lemongrass.jpg', content_type: 'image/jpg')
restaurant2.photos.attach(io: file6, filename: 'thai_pattern.jpg', content_type: 'image/jpg')

file3 = URI.open('https://images.pexels.com/photos/9315/menu-restaurant-france-eating-9315.jpg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940')
file7 = URI.open('https://cdn1.vectorstock.com/i/1000x1000/08/50/italian-food-logo-designs-vector-29590850.jpg')
restaurant3 = Restaurant.create(name: "Papa Pane", address: "Ackerstraße 23, 10115 Berlin", city: "Berlin", description: "Authentic Italian food in the heart of Berlin! The best Napoli style pizza! Italian food is the best food in the world and we want to spread the joy that it brings also to other places.", cuisine: "Italian")
restaurant3.photos.attach(io: file3, filename: 'papapane.jpg', content_type: 'image/jpg')
restaurant3.photos.attach(io: file7, filename: 'italian_logo.jpg', content_type: 'image/jpg')

file4 = URI.open('https://images.unsplash.com/photo-1551632436-cbf8dd35adfa?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1051&q=80')
file8 = URI.open('https://image.freepik.com/free-vector/white-abstract-background-paper-style_23-2148389998.jpg')
restaurant4 = Restaurant.create(name: "Schneeweiß", address: "Simplonstraße 16, 10245 Berlin", city: "Berlin", description: "Stylish restaurant serving Alpine cuisine in the trendy neighbourhood of Friedrichshain. You don't need to travel to Austria to be able to eat one of the best schnitzel in the world.", cuisine: "Alpine")
restaurant4.photos.attach(io: file4, filename: 'schneeweiss.jpg', content_type: 'image/jpg')
restaurant4.photos.attach(io: file8, filename: 'snow_logo.jpg', content_type: 'image/jpg')

### Chefs
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

image4 = URI.open('https://images.pexels.com/photos/2102934/pexels-photo-2102934.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940')
chef4 = Chef.create(first_name: "Thomas", last_name: "Keller", bio: "Thomas learned to cook the best Alpine food during his years as a sous chef in one of Austria's best restaurants.")
chef4.photo.attach(io: image4, filename: 'thomas.jpg', content_type: 'image/jpg')


#### Meals
puts "Creating meals..."

# Meals Chef 1 / Restaurant 1

photo1 = URI.open('https://storage.needpix.com/rsynced_images/tortelloni-2963581_1280.jpg')
meal1 = Meal.create(name: "Agnolotti", difficulty: 3, prep_time: 80, price: 25, description: "Vegan Agnolotti with freshly picked mushrooms.", restaurant: Restaurant.first, chef: Chef.first, menu_type: "Main Dish", video: 'https://player.vimeo.com/video/216445734')
meal1.photo.attach(io: photo1, filename: 'agnolotti.jpg', content_type: 'image/jpg')

photo2 = URI.open('https://images.unsplash.com/photo-1574448857443-dc1d7e9c4dad?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1347&q=80')
meal2 = Meal.create(name: "Garlic Herb Flatbread", difficulty: 2, prep_time: 75, price: 15, description: "Flatbread made with locally sourced flour.", restaurant: Restaurant.first, chef: Chef.first, menu_type: "Starter", video: 'https://player.vimeo.com/video/371813808')
meal2.photo.attach(io: photo2, filename: 'flatbread.jpg', content_type: 'image/jpg')

photo7 = URI.open('https://images.pexels.com/photos/3026810/pexels-photo-3026810.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940')
meal7 = Meal.create(name: "Vegan chocolate mousse", difficulty: 2, prep_time: 40, price: 18, description: "Tasty chocolate mousse with only vegan ingredients. Perfect dessert for a summer day.", restaurant: Restaurant.first, chef: Chef.first, menu_type: "Dessert", video: 'https://player.vimeo.com/video/372327996')
meal7.photo.attach(io: photo7, filename: 'mousse.jpg', content_type: 'image/jpg')

# Meals Chef 2 / Restaurant 2

photo3 = URI.open('https://images.unsplash.com/photo-1559314809-0d155014e29e?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1050&q=80')
meal3 = Meal.create(name: "Pad Thai", difficulty: 3, prep_time: 25, price: 15, description: "Spicy Thai-style fried noodles with peanuts and soy sprouts.", restaurant: Restaurant.second, chef: Chef.second, menu_type: "Main Dish")
meal3.photo.attach(io: photo3, filename: 'padthai.jpg', content_type: 'image/jpg')

photo4 = URI.open('https://images.pexels.com/photos/539451/pexels-photo-539451.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940')
meal4 = Meal.create(name: "Tom Kha Kai", difficulty: 2, prep_time: 40, price: 13, description: "Thai coconut soup with coriander.", restaurant: Restaurant.second, chef: Chef.second, menu_type: "Main Dish")
meal4.photo.attach(io: photo4, filename: 'soup.jpg', content_type: 'image/jpg')

# Meals Chef 3 / Restaurant 3

photo5 = URI.open('https://images.pexels.com/photos/1256875/pexels-photo-1256875.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=940')
meal5 = Meal.create(name: "Tagliatelle al salmone e basilico", difficulty: 2, prep_time: 30, price: 10, description: "Our homemade tagliatelle with fresh slamon from the coast of Denmark.", restaurant: Restaurant.third, chef: Chef.third, menu_type: "Main Dish")
meal5.photo.attach(io: photo5, filename: 'tagliatelle.jpg', content_type: 'image/jpg')

photo6 = URI.open('https://images.pexels.com/photos/1437267/pexels-photo-1437267.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940')
meal6 = Meal.create(name: "Penne all'arrabbiata", difficulty: 3, prep_time: 25, price: 10, description: "Delicious penne with sauce made from the best local tomatoes.", restaurant: Restaurant.third, chef: Chef.third, menu_type: "Main Dish")
meal6.photo.attach(io: photo6, filename: 'penne.jpg', content_type: 'image/jpg')

# Meals Chef 4 / Restaurant 4

photo7 = URI.open('https://images.unsplash.com/photo-1560611588-163f295eb145?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1050&q=80')
meal7 = Meal.create(name: "Wiener Schnitzel", difficulty: 3, prep_time: 40, price: 22, description: "The best Wiener Schnitzel in Berlin!", restaurant: Restaurant.fourth, chef: Chef.fourth, menu_type: "Main Dish")
meal7.photo.attach(io: photo7, filename: 'schnitzel.jpg', content_type: 'image/jpg')


#### Meal Categories

puts "Creating meal categories..."

# First meal
MealCategory.create(meal: Meal.first, category: Category.first)
MealCategory.create(meal: Meal.first, category: Category.second)

# Second meal
MealCategory.create(meal: Meal.second, category: Category.first)
MealCategory.create(meal: Meal.second, category: Category.second)

# Third meal
MealCategory.create(meal: Meal.third, category: Category.first)
MealCategory.create(meal: Meal.third, category: Category.second)

# Fourth meal
MealCategory.create(meal: Meal.fourth, category: Category.fifth)
MealCategory.create(meal: Meal.fourth, category: Category.last)

# Fifth meal
MealCategory.create(meal: Meal.find_by(name: "Tom Kha Kai"), category: Category.find_by(name: "Spicy"))
MealCategory.create(meal: Meal.find_by(name: "Tom Kha Kai"), category: Category.find_by(name: "Vegan"))

# Sixth meal
MealCategory.create(meal: Meal.find_by(name: "Tagliatelle al salmone e basilico"), category: Category.find_by(name: "Fish"))

# Seventh meal
MealCategory.create(meal: Meal.find_by(name: "Penne all'arrabbiata"), category: Category.find_by(name: "Spicy"))
MealCategory.create(meal: Meal.find_by(name: "Penne all'arrabbiata"), category: Category.find_by(name: "Vegan"))

# Seventh meal
MealCategory.create(meal: Meal.find_by(name: "Wiener Schnitzel"), category: Category.find_by(name: "Egg"))



### User
puts "Creating users..."

User.create(first_name: "Dana", last_name: "Gordas", email: "dana@gmail.com", password: "123456")
User.create(first_name: "Facundo", last_name: "Troitero", email: "facundo@gmail.com", password: "123456")
User.create(first_name: "Bea", last_name: "Kern", email: "bea@gmail.com", password: "123456")
User.create(first_name: "Juliane", last_name: "Schremer", email: "juliane@gmail.com", password: "123456")

### Steps
puts "Creating steps..."

#Agnolotti steps

Sa1photo = URI.open('https://images.pexels.com/photos/9510/food-pizza-kitchen-recipe.jpg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260')
Sa1 = Step.create(name: "Step 1: for the Pasta Dough", content: "Combine flour, semolina, and salt in a small bowl.
    In a small bowl add the eggs and olive oil; whisk until combined.
    Pour the egg mixture into the well and grab a good ol’ fork.  Slowly incorporate the flour until the mixture is combined and start working with your hands.
    Slowly work until it forms a dough. Knead the dough until the dough feels similar to  play-doh.",
    meal: Meal.find_by(name: "Agnolotti"))
Sa1.photo.attach(io: Sa1photo, filename: 'sa1.jpg', content_type: 'image/jpg')

Sa2photo = URI.open('https://images.unsplash.com/photo-1558596401-6a1f12167068?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1350&q=80')
Sa2 = Step.create(name: "Step 2: for the Filling", content: "Place peeled and diced potatoes in a medium pot and fill with water until potatoes are just covered.
    Put on medium high heat and allow water to boil. Boil potatoes until a fork can poke through.
    Drain potatoes and mash until smooth. Add goat cheese, parmesan, milk, chives and  salt. Mix until well incorporated.",
    meal: Meal.find_by(name: "Agnolotti"))
Sa2.photo.attach(io: Sa2photo, filename: 'sa1.jpg', content_type: 'image/jpg')


Sa3photo = URI.open('https://images.unsplash.com/photo-1521732670659-b8c918da61dc?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1350&q=80')
Sa3 = Step.create(name: "Step 3: Making Agnolotti", content: "With your piping bag, pipe a long line of the potato filling along the bottom of the sheet leaving about 1/4 inch of space from the very bottom.
    Brush a small amount of egg wash above the piped potato on the pasta sheet.  Gently grab the quarter inch of space on the bottom and  fold over piped potato and roll one time.
    The egg wash will help seal the pasta and the piped potato should be wrapped in the thin pasta. ",
    meal: Meal.find_by(name: "Agnolotti"))
Sa3.photo.attach(io: Sa3photo, filename: 'sa3.jpg', content_type: 'image/jpg')


#Flatbread steps

Sb1photo = URI.open('https://images.unsplash.com/photo-1517686469429-8bdb88b9f907?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1350&q=80')
Sb1 = Step.create(name: "Step 1: making the Bread Dough", content: "To a large mixing bowl, add yeast, garlic, herbs, sea salt, organic cane sugar, all-purpose flour, and spelt flour and whisk.
    Make a well in the dry ingredients and add olive oil and two-thirds of the warm water to start (1/2 cup or 120 ml as original recipe is written // adjust if altering batch size). Stir with a wooden spoon to mix. Add more water as needed until a dough forms.
    Transfer to a clean, well-floured surface and knead until smooth and elastic – about 2 minutes – adding more flour as needed to prevent sticking.
    Wipe out mixing bowl and add a bit of oil (1 tsp as original recipe is written // adjust if altering batch size). Roll dough around to coat and position seam-side down in the bowl. Cover with a damp towel or plastic wrap. Set in a warm place to rise for 1 hour.",
    meal: Meal.find_by(name: "Garlic Herb Flatbread"))
Sb1.photo.attach(io: Sb1photo, filename: 'sb1.jpg', content_type: 'image/jpg')

Sb2photo = URI.open('https://live.staticflickr.com/2780/5753897290_cd30d129be_k.jpg%22')
Sb2 = Step.create(name: "Step 2: Cooking", content: "In the meantime, heat a large skillet (electric or cast iron) to medium-high heat (~375 degrees F/ 190 C).
One at a time on a lightly floured surface, roll each piece of dough into a large circle that’s fairly thin (not paper thin, but less than 1/8th inch thick – see photo).
Lightly grease preheated skillet and lay down flatbread. Don’t touch, cook for 2 1/2 minutes. Flip and cook for 2 1/2 minutes on the other side. Repeat, adding more oil to coat surface, until all flatbread is cooked.
Enjoy immediately, or let cool completely and store in a well-sealed bag or container up to 3 days (though best when fresh).",
    meal: Meal.find_by(name: "Garlic Herb Flatbread"))
Sb2.photo.attach(io: Sb2photo, filename: 'sb1.jpg', content_type: 'image/jpg')



#Chocolate mousse steps


Sc1photo = URI.open('https://images.unsplash.com/photo-1587560555774-4063ddc3fe25?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=634&q=80')
Sc1 = Step.create(name: "Step 1: preparing the mixture", content: "In a small saucepan, combine the cocoa or cacao powder, carob powder, cocoa butter, salt, and coconut milk . Begin warming over medium-low heat, whisking to combine.
Once the mixture is melted, add remaining coconut milk and whisk until fully combined. Then remove from heat and add vanilla and stevia to taste (or just add more dates).",
    meal: Meal.find_by(name: "Vegan chocolate mousse"))
Sc1.photo.attach(io: Sc1photo, filename: 'sc1.jpg', content_type: 'image/jpg')

Sc2photo = URI.open('https://images.unsplash.com/photo-1548329408-0bcd6e68058d?ixlib=rb-1.2.1&auto=format&fit=crop&w=634&q=80')
Sc2 = Step.create(name: "Step 2: serving the mousse", content: "Transfer the mixture to a blender. Add dates (start with 5 and increase to taste), and blend on high until creamy and smooth. Taste and adjust flavor as needed, adding more cacao powder for rich chocolate flavor, dates for sweetness, or sea salt for saltiness. Transfer to a bowl and cover. Refrigerate until cold and thickened - at least 4 hours, preferably overnight.
To serve, enjoy as is or divide between serving glasses and top with coconut whipped cream, raspberries, and chopped vegan dark chocolate or cacao/cocoa powder.",
    meal: Meal.find_by(name: "Vegan chocolate mousse"))
Sc2.photo.attach(io: Sc2photo, filename: 'sc2.jpg', content_type: 'image/jpg')




puts "Finished!"
