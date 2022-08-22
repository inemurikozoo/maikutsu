class CreateShoppingMemos < ActiveRecord::Migration[6.1]
  def change
    create_table :shopping_memos do |t|
      t.integer :sub_item_id,   null: false, default: ""
      t.boolean :is_monitoring, null: false, default: ""

      t.timestamps
    end
  end
end
