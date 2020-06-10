class Step < ApplicationRecord
  belongs_to :meal
  has_one_attached :photo

end
