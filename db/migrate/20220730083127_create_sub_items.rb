class CreateSubItems < ActiveRecord::Migration[5.2]
  def change
    create_table :sub_items do |t|

      t.integer :item_id,         null: false,    default: ""
      t.integer :user_id,         null: false,    default: ""
      t.string  :subname,         null: false,    default: ""
      t.integer :image_id,        null: false,    default: ""
      t.integer :inventory,       null: false,    default: ""
      t.boolean :alert_inventory, null: false,    default: ""
      t.string  :memo,            null: false,    default: ""
      
      t.timestamps
    end
  end
end
