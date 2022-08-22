class Public::ShoppingmemosController < ApplicationController
  def index
    @shopping_memo = current_user.subitems
  end
end
