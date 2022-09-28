class Public::ShoppingmemosController < ApplicationController

  def index
    @sub_items = current_user.shoppingmemos
  end

  def selected_create
    #登録したいサブアイテムid
    new_sub_item_ids = params[:sub_item_ids]&.map(&:to_i) || []
    #現在のdbにあるサブアイテムid
    SubItem.where(id: new_sub_item_ids).update_all(is_monitoring: true) if new_sub_item_ids.any?
      redirect_to shoppingmemos_index_path
  end

  def delete_memo
    @sub_item = SubItem.find(params[:id])
    if @sub_item.update(is_monitoring: false)
      redirect_to shoppingmemos_index_path, notice: "メモの項目を削除しました"
    else
      render :index
    end
  end

  private

  def shopping_memos_params
    params.require(:shoppingmemos).permit(:user_id, :sub_item_id, :is_monitoring)
  end


end