class Item < ApplicationRecord
  has_many :sub_items, dependent: :destroy
  has_many :units, dependent: :destroy
  belongs_to :categories
  belongs_to  :user
  has_one_attached :image
end
