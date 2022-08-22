class Public::ItemsController < ApplicationController
  def new
    @sub_item = SubItem.new
  end
  
  def index
    @sub_items = SubItem.all
  end

  def show
    @sub_item = SubItem.find(params[:id])
  end

  def create
    @sub_item = SubItem.new
  end

  def edit
    @sub_item = SubItem.find(params[:id])
  end

  def update
    @sub_item = SubItem.find(params[:id])
  end

  def destroy
    @sub_item = SubItem.find(params[:id])
  end
end