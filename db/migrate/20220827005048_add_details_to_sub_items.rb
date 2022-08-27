class AddDetailsToSubItems < ActiveRecord::Migration[6.1]
  def change
    add_column :sub_items, :inv_constant, :integer
    add_column :sub_items, :expiration_days, :date
    add_column :sub_items, :alert_expiration, :boolean
  end
end
