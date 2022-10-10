class Category < ApplicationRecord
  has_many :items

  #カラーコード以外を入力できなくするバリデーション
  validates :color_code, format: {with: /\A#([0-9a-fA-F]{6})\z/}

# ソート機能
  scope :sort_category_desc, ->{ order(category_id: :desc) }
  scope :sort_category_asc,  ->{ order(category_id: :asc) }

end
