class Product < ApplicationRecord
  has_many :line_items, dependent: :nullify

validates :title, :description, :image_url, presence: true
validates :price, numericality: { greather_than_or_equal_to: 1}
validates :title, uniqueness: {case_sensitive: false}
validates :image_url,
format: {
  with: /\.(jpg|png|gif)\z/i,
  message: "doit être au format JPG, PNG ou GIF"
},
allow_blank: true


end
