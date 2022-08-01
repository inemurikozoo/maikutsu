class CreateUnits < ActiveRecord::Migration[5.2]
  def change
    create_table :units do |t|
      t.integer :item_id,   null: false,  default: ""
      t.integer :user_id,   null: false,  default: ""
      t.string  :unit,      null: false,  default: ""
      t.timestamps
    end
  end
end
