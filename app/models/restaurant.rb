class Restaurant < ApplicationRecord
  CITY = ['Berlin', 'Hamburg', 'Stuttgart', 'Dortmund']
  CUISINE = ['Asian', 'Austrian', 'Chinese', 'Filipino', 'French', 'German', 'Greek', 'Indian', 'Indonesian', 'Italian', 'Japanese', 'Korean', 'Lebanese', 'Mexican', 'Moroccan', 'Peruvian', 'Russian', 'Swedish', 'Swiss', 'Thai', 'Turkish', 'Vietnamese', 'Fusion', 'German', 'Alpine']

  has_many :orders, dependent: :destroy
  has_many :reviews, through: :orders
  has_many :meals, dependent: :destroy
  has_many :chefs, through: :meals
  has_many :meal_categories, through: :meals
  has_many :categories, through: :meal_categories
  has_one_attached :photo

  validates :city, presence: true, inclusion: { in: CITY }
  validates :cuisine, presence: true, inclusion: { in: CUISINE }
end
