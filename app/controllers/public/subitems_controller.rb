class Public::SubitemsController < ApplicationController
  def new
    @sub_item = SubItem.new
  end
  
  def create
    @sub_item = SubItem.new(sub_item_params)
    @sub_item.build_unit
    if @sub_item.save
      redirect_to subitem_path(@sub_item.id), notice: "こものを作成しました"
    else
      render :new, notice: "こものの作成に失敗しました"
    end
  end
  
  def index
    @sub_items = SubItem.page(page[:id])
  end
  
  def show
    @sub_item = SubItem.find(params[:id])
  end

  def edit
    @sub_item = SubItem.find(params[:id])
  end

  def update
    @sub_item = SubItem.find(params[:id])
    if @sub_item.update(sub_item_params)
      redirect_to sub_item_path(@sub_item.id), notice: "内容を更新しました"
    else
      render :edit,notice: "更新に失敗しました"
    end
  end
  
  def destroy
    @sub_item = SubItem.find(params[:id])
  end
  
  private
  
  def sub_item_params
    params.require(:subitem).permit(:item_id, :user_id, :subname, :image_id, :inventory, :alert_inventory, :memo, unit_attributes: [:unit])
  end
  
end
