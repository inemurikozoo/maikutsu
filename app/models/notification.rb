class Notification < ApplicationRecord
  belongs_to :sub_item, optional: true
  belongs_to :user,     optional: true

  # 未読のお知らせを取得
  scope :unread_notification, -> { where(cheked: false) }

end
