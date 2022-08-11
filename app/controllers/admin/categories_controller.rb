class Admin::CategoriesController < ApplicationController
  def new
  end

  def index
    @categories = Category.all

  end

  def edit
    @category = Category.find(params[:id])
    
  end

  def update
    @category = Category.find(params[:id])
    if @category.update
      flash[:notice] = "カテゴリを更新しました"
      redirect_to admin_categories_path
    else
      render :edit
    end
  end

end
