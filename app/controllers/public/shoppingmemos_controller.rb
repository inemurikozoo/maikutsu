class Public::ShoppingmemosController < ApplicationController
  
  def index
    @shopping_memos = current_user.shopping_memos
  end

  def selected_create
    #登録したいサブアイテムid
    new_sub_item_ids = params[:sub_item_ids]&.map(&:to_i) || []
    #現在のdbにあるサブアイテムid
    current_sub_item_ids = current_user.shopping_memos.pluck(:sub_item_id)
     #登録したいサブアイテムidから現在のdbにあるサブアイテムidを取り除く
    target_sub_item_ids = new_sub_item_ids - current_sub_item_ids
    target_sub_item_ids.each do |sub_item_id|
      current_user.shopping_memos.create(sub_item_id: sub_item_id, is_monitoring: false)
    end

    redirect_to shoppingmemos_index_path
  end
  
  def destroy
    shoppingmemo = ShoppingMemo.find(params[:id])
    if shoppingmemo.destroy
      redirect_to shoppinmemos_index_path
    else
      render :index
    end
  end
  

  private

  def shopping_memos_params
    params.require(:shoppingmemos).permit(:user_id, :sub_item_id, :is_monitoring)
  end
end