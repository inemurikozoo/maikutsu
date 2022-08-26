class AddCategoryIdToItems < ActiveRecord::Migration[6.1]
  def change
    add_column :items, :category_id, :integer, null: false, default: ""
  end
end