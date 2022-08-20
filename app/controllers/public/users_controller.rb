class Public::UsersController < ApplicationController
  def show
    @user = current.user
  end

  def edit
  end

  def update
  end

  def exit
  end
end
