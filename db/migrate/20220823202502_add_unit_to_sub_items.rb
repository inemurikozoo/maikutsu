class AddUnitToSubItems < ActiveRecord::Migration[6.1]
  def change
    add_column :sub_items, :unit, :string, default: ""
  end
end
