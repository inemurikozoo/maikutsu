class ShoppingMemo < ApplicationRecord
  belongs_to :sub_item
  belongs_to :user
end
