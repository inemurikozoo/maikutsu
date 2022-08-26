class SubItem < ApplicationRecord
  belongs_to :item
  has_one :shopping_memo, dependent: :destroy
  has_one_attached :image


end
