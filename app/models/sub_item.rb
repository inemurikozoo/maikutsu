class SubItem < ApplicationRecord
  belongs_to :item
  has_one :shopping_memo, dependent: :destroy
  has_one_attached :sub_item_image
  belongs_to :user

  validates :item_id, presence: true
  validates :unit, presence: true
  validate :date_cannot_be_in_the_past

  def date_cannot_be_in_the_past
    if expiration_days.present? && expiration_days < Date.today
      errors.add(:expiration_days, ": 過去の日付は使用できません")
    end
  end
end
