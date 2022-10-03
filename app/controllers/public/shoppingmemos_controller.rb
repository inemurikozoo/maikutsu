class Public::ShoppingmemosController < ApplicationController

  def index
    @sub_items = current_user.sub_items.where(is_monitoring: true)
  end

  def selected_create
    #登録したいサブアイテムid
    new_sub_item_ids = params[:sub_item_ids]&.map(&:to_i) || []
    #現在のdbにあるサブアイテムid
    SubItem.where(id: new_sub_item_ids).update_all(is_monitoring: true) if new_sub_item_ids.any?
      redirect_to shoppingmemos_index_path
  end

  def update_all
    sub_items_inventories = params.dig(:sub_items, :sub_item)
    sub_items_inventories.each do |k, v|
      id = k
      inventory = v.dig(:inventry).to_i
      sub_item = SubItem.find(id)
      sub_item.update(inventory: sub_item.inventory + inventory)
    end
    redirect_to shopping_finish_path
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

end