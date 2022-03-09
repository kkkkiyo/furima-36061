class CreateItems < ActiveRecord::Migration[6.0]
  def change
    create_table :items do |t|
      t.text :item_name
      t.text :item_info
      t.string :item_category
      t.string :item_sales_status
      t.string :item_shipping_fee_statu
      t.string :item_prefecture
      t.string :item_scheduled_delivery
      t.integer :item_price
      t.timestamps
    end
  end
end
