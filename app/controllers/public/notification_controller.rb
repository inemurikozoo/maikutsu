class Public::NotificationController < ApplicationController
  def index
    @notifications = current_user.notifications
  end

  def destroy
    @notification = Notification.find(params[:id])
    if @notification.destroy
      redirect_to notifications_path, notice: "通知を削除しました"
    else
      render :index, notice: "削除に失敗しました"
    end
  end
end
