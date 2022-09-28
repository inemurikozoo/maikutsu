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
      message: "新規アラートが作成されました。",
      date: Date.today
      )
    notification.save
  end

# 期限アラート
  def create_exp_alert_notification(current_user)
    notification = current_user.notifications.new(
      user_id: current_user,
      sub_item_id: id,
      action: "exp_alert"
      )
    notification.save
  end
end
