class Admin::UsersController < ApplicationController
  def index
    @users = User.page(params[:page])
  end

  def switch
    @user = User.find(params[:id])
    if @user.is_active == true
      @user.update(is_active: false)
      redirect_to request.referer, notice: "退会に変更しました。"
    else
      @user.update(is_active: true)
      redirect_to request.referer, notice: "有効に変更しました。"
    end
  end

  private

  def user_params
    params.require(:user).permit(:name)
  end
end
