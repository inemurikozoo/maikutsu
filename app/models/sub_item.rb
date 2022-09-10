class SubItem < ApplicationRecord
  belongs_to :item
  has_one :shopping_memo, dependent: :destroy
  has_one_attached :sub_item_image

  # validate :pretend_ago

  # def pretend_ago
  #   errors.add(:expiration_days, '今日より以前の日付は選べません。') if expiration_days.nil? || expiration_days < Date.today
  # end
end
