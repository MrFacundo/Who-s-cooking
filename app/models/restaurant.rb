class Restaurant < ApplicationRecord
  CITY = ['Berlin', 'Hamburg', 'Stuttgart', 'Dortmund']

  has_many :orders
  has_many :reviews, through: :orders
  has_many :meals, dependent: :destroy
  has_many :chefs, through: :meals
  has_many :meal_categories, through: :meals
  has_many :categories, through: :meal_categories
  has_one_attached :photo


  validates :city, presence: true, inclusion: { in: CITY }
end
