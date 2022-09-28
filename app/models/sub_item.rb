class SubItem < ApplicationRecord
  # optional: true はnilを許容する
  belongs_to :item, optional: true
  has_one_attached :sub_item_image
  belongs_to :user
  has_many :notifications, dependent: :destroy
  
  validates :item_id, presence: true
  validates :unit, presence: true
  validate :date_cannot_be_in_the_past
  validates :inventory, presence: true, numericality: {only_integer: true, greater_than_or_equal_to: 0}

  # ショッピングメモモデルを消したので代替え案
  scope :shopping_memos, -> { where(is_monitoring: true) }
  
  # ソート
  scope :sort_subname_desc, -> { order(subname: :desc) }
  scope :sort_subname_asc,  -> { order(subname: :asc)}

  # 今日以前の日付が選択できないようにする記述
  def date_cannot_be_in_the_past
    if expiration_days.present? && expiration_days < Date.today
      errors.add(:expiration_days, ": 過去の日付は使用できません")
    end
  end
end
