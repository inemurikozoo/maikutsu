class Public::ShoppingmemosController < ApplicationController
  def index
    @shopping_memos = current_user.shopping
  end
end
