class AddUserIdToShoppingMemos < ActiveRecord::Migration[6.1]
  def change
    add_column :shopping_memos, :user_id, :integer, null: false
  end
end
