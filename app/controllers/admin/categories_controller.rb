class Admin::CategoriesController < ApplicationController
  def new
    @category = Category.new
  end

  def create
    @category = Category.new(category_params)
    if @category.save
      redirect_to admin_categories_path
      flash[:notice] = "カテゴリを作成しました"
    else
      @category = Category.all.page(params[:page].per(10))
      render :index and return
    end
  end

  def index
    @categories = Category.page(params[:page]).per(10)
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
  
  def destroy
    @category = Category.find(params[:id])
    if @category.destroy
      redirect_to admin_categories_path
      flash[:notice] = "カテゴリを削除しました"
    else
      render :show
      flash[:notice] = "削除に失敗しました"
    end
  end

  private
  def category_params
    params.require(:category).permit(:name, :color_code)
  end
end
