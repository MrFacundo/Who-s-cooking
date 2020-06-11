class Restaurant < ApplicationRecord
  CITY = ['Berlin', 'Hamburg', 'Stuttgart', 'Dortmund']
  CUISINE = ['Alpine', 'Asian', 'Austrian', 'Chinese', 'French', 'Fusion', 'German', 'Greek', 'Indian', 'Italian', 'Japanese', 'Korean', 'Lebanese', 'Mexican', 'Moroccan', 'Peruvian', 'Russian', 'Swedish', 'Thai', 'Turkish', 'Vietnamese']

  has_many :orders, dependent: :destroy
  has_many :reviews, through: :orders
  has_many :meals, dependent: :destroy
  has_many :chefs, through: :meals
  has_many :meal_categories, through: :meals
  has_many :categories, through: :meal_categories
  has_many_attached :photos

  validates :city, presence: true, inclusion: { in: CITY }
  validates :cuisine, presence: true, inclusion: { in: CUISINE }

  def average_review
    counter = 0
    if reviews.present?
      reviews.each do |review|
        counter += review.rating
      end
      counter / reviews.size
    end
  end
end
