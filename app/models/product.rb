class Product < ApplicationRecord
  validates :name, presence: true, uniqueness: true
  validates :price, presence: true

  has_many :cart_items, dependent: :destroy
end
