class Order < ApplicationRecord
  belongs_to :user
  belongs_to :restaurant
  has_one :review
  has_many :order_items, dependent: :destroy
  has_many :meals, through: :order_items
end
