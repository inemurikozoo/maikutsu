class SubItem < ApplicationRecord
  # optional: true はnilを許容する記述
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
  scope :sort_subname_asc,  -> { order(subname: :asc) }

# 在庫アラート
  def create_inv_alert_notification(user)
    notification = user.notifications.new(
      sub_item_id: id,
      action: "inv_alert",
      message: "#{item.name}の在庫数が少なくなっています。",
      date: Date.today
      )
    notification.save
  end

  # 期限アラート
  def create_exp_alert_notification(user)
    notification = user.notifications.new(
      sub_item_id: id,
      action: "exp_alert",
      message: "#{item.name}の設定された使用期限が到来しましたのでお知らせします。",
      date: Date.today
      )
    notification.save
  end

  def is_alert_inv(inventory,inv_constant)
    (inventory - inv_constant).to_i
  end
  
  # def is_alert_exp(expiration_days)
  #   expiration_days - Date.today
  # end

  # 今日以前の日付が選択できないようにする記述
  def date_cannot_be_in_the_past
    if expiration_days.present? && expiration_days < Date.today
      errors.add(:expiration_days, ": 過去の日付は使用できません")
    end
  end



end
