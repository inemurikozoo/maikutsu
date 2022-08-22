class SubItem < ApplicationRecord
  belongs_to :item
  has_one :shopping_memo, dependent: :destroy, class_name: ShoppingMemo
  accepts_nested_attributes_for :unit
  has_one_attached :image
end
