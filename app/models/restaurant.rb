class Restaurant < ApplicationRecord
  CITY = ['Berlin', 'Hamburg', 'Stuttgart', 'Dortmund']

  has_many :orders
  has_many :reviews, through: :orders, dependent: :destroy
  has_many :meals
  has_many :chefs, through: :meals

  validates :city, presence: true, inclusion: { in: CITY }
end
