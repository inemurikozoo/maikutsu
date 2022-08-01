class Item < ApplicationRecord
  has_many :sub_items, dependent: :destroy
  has_many :units, dependent: :destroy
  has_many :categories, dependent: :destroy
  belongs_to  :user
end
