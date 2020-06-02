class Category < ApplicationRecord
  has_many :meal_categories
  validates :name, uniqueness: true
end
