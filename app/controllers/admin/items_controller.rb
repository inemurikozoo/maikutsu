class Admin::ItemsController < ApplicationController
  def new
    @item = Item.new
  end

  def create
    @item = Item.new
    @item.save(item_params)
  end

  def index
    @items = Item.all
  end

  def show
    @item = Item.find(params[:id])
    @colorCode = @item.category.color_code
  end

  def edit
    @item = Item.find(params[:id])
    @categories = Category.all
  end

  def confirm
    @item = Item.find(params[:id])
  end

  def update
    @item = Item.find(params[:id])
    if @item.update(item_params)
      redirect_to admin_item_path(@item.id), notice: "内容を更新しました"
    else
      render :edit,notice: "更新に失敗しました"
    end
  end

  def destroy
    @item = Item.find(params[:id])
    binding.pry
    if @item.destroy
      redirect_to admin_items_path, notice: "ものを削除しました"
    else
      render :show, notice: "ものの削除に失敗しました"
    end
  end

  private

  def item_params
    params.require(:item).permit(:name, :category_id, :preserve_method, :how_to_choose, :limit)
  end
end