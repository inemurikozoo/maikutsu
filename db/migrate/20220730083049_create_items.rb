class CreateItems < ActiveRecord::Migration[5.2]
  def change
    create_table :items do |t|
      
      t.string :name,             null: false, default: ""
      t.string :preserve_method,  null: false, default: ""
      t.string :how_to_choose,    null: false, default: ""
      t.string :limit,            null: false, default: ""
      t.timestamps
    end
  end
end
