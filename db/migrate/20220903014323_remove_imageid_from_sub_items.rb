class RemoveImageidFromSubItems < ActiveRecord::Migration[6.1]
  def change
    remove_column :sub_items, :image_id, :integer
  end
end
