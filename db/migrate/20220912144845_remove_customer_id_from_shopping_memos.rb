class RemoveCustomerIdFromShoppingMemos < ActiveRecord::Migration[6.1]
  def change
    remove_column :shopping_memos, :customer_id, :integer
  end
end
