class Category < ApplicationRecord
  has_many :meal_categories, dependent: :destroy
  validates :name, uniqueness: true
end
