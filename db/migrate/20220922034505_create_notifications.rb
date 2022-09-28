class CreateNotifications < ActiveRecord::Migration[6.1]
  def change
    create_table :notifications do |t|
      t.integer :user_id,     null: false
      t.integer :sub_item_id, null: false
      t.string  :action,      null: false
      t.boolean :checked,     default: false
      t.string  :message
      t.timestamps
    end
  end
end
