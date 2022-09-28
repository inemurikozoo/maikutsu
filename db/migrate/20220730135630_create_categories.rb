class CreateCategories < ActiveRecord::Migration[5.2]
  def change
    create_table :categories do |t|

      t.string :name,   null: false,  default: ""
      t.string :color_code, null: false
      t.timestamps
    end
  end
end
