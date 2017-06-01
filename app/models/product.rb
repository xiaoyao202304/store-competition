class Product < ApplicationRecord
  mount_uploader :image, ImageUploader

  CATEGORY = ["Tees", "Shirts", "Dresses", "Accessories"]
  validates_inclusion_of :category, :in => CATEGORY
end
