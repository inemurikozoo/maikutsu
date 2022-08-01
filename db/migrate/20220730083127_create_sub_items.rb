class CreateSubItems < ActiveRecord::Migration[5.2]
  def change
    create_table :sub_items do |t|

      t.integer :item_id,         null: false,    default: ""
      t.integer :user_id,         null: false,    default: ""
      t.string  :subname,                         default: ""
      t.integer :image_id,        null: false,    default: ""
      t.integer :inventory,       null: false,    default: 0
      t.boolean :alert_inventory, null: false,    default: false
      t.string  :memo,                            default: ""
      
      t.timestamps
    end
  end
end
