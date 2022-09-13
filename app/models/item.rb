class Item < ApplicationRecord
  has_many :sub_items, dependent: :destroy
  has_many :units, dependent: :destroy
  belongs_to :category
  has_one_attached :item_image
end
