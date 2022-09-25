class Public::ShoppingmemosController < ApplicationController

  def index
    @sub_items = current_user.sub_items.shopping_memos
  end

  def selected_create
    #登録したいサブアイテムid
    new_sub_item_ids = params[:sub_item_ids]&.map(&:to_i) || []
    #現在のdbにあるサブアイテムid
    SubItem.where(id: new_sub_item_ids).update_all(is_monitoring: true) if new_sub_item_ids.any?
      redirect_to shoppingmemos_index_path
  end

  def destroy
    shoppingmemo = ShoppingMemo.find(params[:id])
    if shoppingmemo.destroy
      redirect_to shoppingmemos_index_path, notice: "買い物メモから削除しました。"
    else
      render :index,notice: "更新に失敗しました"
    end
  end

  private

  def shopping_memos_params
    params.require(:shoppingmemos).permit(:user_id, :sub_item_id, :is_monitoring)
  end

  
end