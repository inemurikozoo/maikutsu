class Item < ApplicationRecord
  has_many :sub_items
  has_many :categories
  has_one_attached :item_image
end
