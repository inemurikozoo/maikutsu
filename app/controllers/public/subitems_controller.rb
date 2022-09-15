class Public::SubitemsController < ApplicationController
  def new
    @sub_item = SubItem.new
  end

  def create
    @sub_item = SubItem.new(sub_item_params)
    @sub_item.user_id = current_user.id
    if @sub_item.save!
      redirect_to subitem_path(@sub_item.id), notice: "こものを作成しました"
    else
      render new, notice: "こものの作成に失敗しました"
    end
  end

  def index
    @sub_items = current_user.sub_items

  end

  def show
    @sub_item = SubItem.find(params[:id])
    @categories = Category.all
  end

  def edit
    @sub_item = SubItem.find(params[:id])
  end

  def update
    @sub_item = SubItem.find(params[:id])
    if @sub_item.update(sub_item_params)
      redirect_to subitem_path(@sub_item.id), notice: "内容を更新しました"
    else
      render :edit,notice: "更新に失敗しました"
    end
  end

  # def minus
  #   @sub_item = SubItem.find(params[:id])
  #   @sub_item.inventory -= 1
  #   if @sub_item.inventory >= 0
  #     @sub_item.inventory = 0
  #     @sub_item.update(sub_item_params)
  #     redirect_back(fallback_location: subitem_path(@sub_item.id))
  #   elsif
  #     @sub_item.update(sub_item_params)
  #     redirect__back(fallback_location: subitem_path(@sub_item.id))
  #   else
  #     render "show"
  #   end
  # end

  # def plus
  #   @sub_item = SubItem.find(params[:id])
  #   @sub_item.inventory += 1
  #   if @sub_item.update(sub_item_params)
  #     redirect__back(fallback_location: subitem_path(@sub_item.id))
  #   else
  #     render "show"
  #   end
  # end

  def destroy
    sub_item = SubItem.find(params[:id])
    if sub_item.destroy
      redirect_to subitems_path, notice: "こものを削除しました。"
    else
      render action:show, notice: "こものの削除に失敗しました。"
    end
  end

  # def destroy_all
  #   # チェックボックスにチェックが入ったデータの受け取り
  #   checked_data = params[:selects].keys
  #   if SubItem.destroy(checked_data)
  #     redirect_to subitems_path
  #   else
  #     render action: 'index'
  #   end
  # end

  private

  def sub_item_params
    params.require(:sub_item).permit(:item_id, :subname, :inventory,
                                    :alert_inventory, :memo, :unit, :inv_constant,
                                    :expiration_days, :alert_expiration, :image)
  end

end
