class Product < ApplicationRecord
  mount_uploader :image, ImageUploader
  has_many :photos, :dependent => :destroy
  accepts_nested_attributes_for :photos

  CATEGORY = ["Tees", "Shirts", "Dresses", "Accessories"]
  validates_inclusion_of :category, :in => CATEGORY
end
