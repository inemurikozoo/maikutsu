class Public::UsersController < ApplicationController

  def show
    @user = current_user
  end

  def edit
    @user = current_user
  end

  def update
    @user = current_user
    if @user.update(user_params)
      redirect_to user_path
    end
  end

  def exit
    @user = User.find(current_user.id)
    @user.update(is_active: false)
    reset_session
    flash[:notice] = "退会処理が完了しました。またのご利用をお待ちしております。"
    redirect_to root_path
  end

  
  private
  
  def user_params
    params.require(:user).permit(:email, :name)
  end
  

end
