class Restaurant < ApplicationRecord
  has_many :orders
  has_many :reviews, through: :orders, dependent: :destroy
  has_many :meals
  has_many :chefs, through: :meals
end
