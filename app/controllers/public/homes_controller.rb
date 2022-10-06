class Public::HomesController < ApplicationController
  def top
  end

  def about
  end
  
  # 以下を追加
  def guest_sign_in
    user = User.find_or_create_by!(email: 'guest@example.com') do |user|
      user.password = SecureRandom.urlsafe_base64
      user.name = "ゲスト"
    end
    sign_in user
    redirect_to user_path, notice: 'ゲストユーザーとしてログインしました。'
  end
end
