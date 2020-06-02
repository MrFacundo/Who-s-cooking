class Meal < ApplicationRecord
  belongs_to :restaurant
  belongs_to :chef
  has_many :steps
  has_many :order_items
  has_many :meal_categories
  has_many :categories, through: :meal_categories
end
