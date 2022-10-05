module ApplicationHelper
  
  def image_where(sub_item)
    if sub_item.sub_item_image.attached?
      image_tag sub_item.sub_item_image, size: "80x50"
    elsif sub_item.item.item_image.present?
      image_tag sub_item.item.item_image, size: "80x50"
    else
      image_tag 'no_image', size: "80x50"
    end
  end
end
