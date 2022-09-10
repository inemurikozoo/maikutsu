class AddCustomerIdToShoppingMemos < ActiveRecord::Migration[6.1]
  def change
    add_column :shopping_memos, :customer_id, :integer, null: false
  end
end
