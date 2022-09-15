class Public::ShoppingmemosController < ApplicationController
  def index
    @shopping_memos = current_user.shopping_memos
  end
  
  def selsect_create
    @shopping_memos = ShoppingMemo.where(id: params[:sub_items].keys).update_all
    
    
    
  end
  
  private
  
  def shopping_memos_params
    params.require(:shoppingmemos).permit(:user_id, :sub_item_id, :is_monitoring)
  end
end