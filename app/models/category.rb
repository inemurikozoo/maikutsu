class Category < ApplicationRecord
  has_many :items, dependent: :destroy

  #カラーコード以外を入力できなくするバリデーション
  validates :color_code, format: {with: /\A#([0-9a-fA-F]{6})\z/}

# ソート機能
  scope :category_id, ->{order(category_id: :desc)}

end
