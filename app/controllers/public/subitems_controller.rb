class Public::SubitemsController < ApplicationController
  def new
    @sub_item = SubItem.new
  end
  
  def create
    form = SubItemRegistrationForm.new(params_permitted)
    SubItem.create!(form.params)
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
  
  def params_permitted
    params.require(:subitem).permit(:item_id, :user_id, :subname, :image_id, :inventory, :alert_inventory, :memo, unit: [:unit])
  end
  
end
