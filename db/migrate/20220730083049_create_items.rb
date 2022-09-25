class CreateItems < ActiveRecord::Migration[5.2]
  def change
    create_table :items do |t|

      t.string :name,             null: false, default: ""
      t.string :preserve_method,               default: ""
      t.string :how_to_choose,                 default: ""
      t.string :limit,                         default: ""
      t.integer :category_id
      t.timestamps
    end
  end
end
