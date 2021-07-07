class Product < ApplicationRecord
  mount_uploader :photo_voiture, PhotoUploader
  has_many :line_items, dependent: :nullify

validates :title, :description, :photo_voiture, :vitesse_max, :puissance, :Acceleration, presence: true
validates :price, numericality: { greather_than_or_equal_to: 1}
validates :photo_voiture,
format: {
  with: /\.(jpg|png|gif)\z/i,
  message: "doit être au format JPG, PNG ou GIF"
},
allow_blank: true


end
