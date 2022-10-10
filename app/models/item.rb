class Item < ApplicationRecord
  has_many :sub_items
  belongs_to :category
  has_one_attached :item_image
end
