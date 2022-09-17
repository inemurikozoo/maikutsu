class Public::ShoppingmemosController < ApplicationController
  def index
    @shopping_memos = current_user.shopping_memos
  end
  
  def selected_create
    # sub_itemのindexで選択したものだけを変数に入れる
    @shopping_memos = ShoppingMemo.where(id: params[:sub_items].keys)
    # 変数に入れたら
    @shopping_memos = ShoppingMemo.
    @shopping_memos.save
    
    
    
  end
  
  private
  
  def shopping_memos_params
    params.require(:shoppingmemos).permit(:user_id, :sub_item_id, :is_monitoring)
  end
end