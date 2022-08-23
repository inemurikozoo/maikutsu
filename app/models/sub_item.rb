class SubItem < ApplicationRecord
  belongs_to :item
  has_one :shopping_memo, dependent: :destroy
  has_one :unit, dependent: :destroy
  has_one_attached :image
  
  class << self
    def create!(params)
      subitem = new(item_id: params[:item_id], user_id: params[:user_id], subname: params[:subname],inventory: params[:inventory],alert_inventory: params[:alert_inventory], memo: params[:memo])
      subitem.unit.build(params[:unit])
      subitem.save!
      redirect_to 
    end
  end
end
