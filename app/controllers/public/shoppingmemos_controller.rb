class Public::ShoppingmemosController < ApplicationController
  def index
    @shopping_memos = current_user.shopping_memos
  end
end