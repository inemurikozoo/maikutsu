class Notification < ApplicationRecord
  belongs_to :sub_item, optional: true
  belongs_to :user,     optional: true

  # 未読のお知らせを取得
  scope :unread_notification, -> { where(cheked: false) }

  # 在庫アラート
  def create_inv_alert_notification(current_user)
    notification = current_user.notifications.new(
      user_id: current_user,
      sub_item_id: sub_item_id,
      action: "inv_alert",
      message: "#{sub_item.subname}の在庫数が少なくなっています。",
      date: Date.today
      )
    notification.save
  end

# 期限アラート
  def create_exp_alert_notification(current_user)
    notification = current_user.notifications.new(
      user_id: current_user,
      sub_item_id: sub_item_id,
      action: "exp_alert",
      message: "#{sub_item.subname}の設定された使用期限が到来しましたのでお知らせします。",
      date: Date.today
      )
    notification.save
  end
end
