class Admin::UsersController < ApplicationController
  def index
    @users = User.page(params[:page])
  end

  def switch
    @user = User.find(params[:id])
    if @user.is_active == true
      @user.update(is_active: false)
    else
      @user.update(is_active: true)
    end
    redirect_to request.referer, notice: "更新しました"
  end
end
