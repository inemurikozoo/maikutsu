class Public::NotificationController < ApplicationController
  def index
    @notifications = current_user.notifications
  end

  def destroy
    @notification = Notification.find(params[:id])
    @sub_item = SubItem.find(params[:sub_item_id])
    # 期限が過ぎた＝通知が削除された設定は削除
    # @sub_item.udpate(expiration_days: nil)
    if @notification.destroy
      redirect_to notifications_path, notice: "通知を削除しました"
    else
      render :index, notice: "削除に失敗しました"
    end
  end
end
