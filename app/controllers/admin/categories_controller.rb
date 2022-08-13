class Admin::CategoriesController < ApplicationController
  def new
    @category = Category.new
  end

  def index
    @categories = Category.all

  end

  def edit
    @category = Category.find(params[:id])
  end

  def update
    @category = Category.find(params[:id])
    if @category.update(category_params)
      flash[:notice] = "カテゴリを更新しました"
      redirect_to admin_categories_path
    else
      render :edit
    end
  end

  private
  def category_params
    params.require(:category).permit(:name, :color_code)
  end
end
