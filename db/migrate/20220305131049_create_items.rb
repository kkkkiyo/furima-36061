class CreateItems < ActiveRecord::Migration[6.0]
  def change
    create_table :items do |t|
      t.text :item_name
      t.text :item_info
      t.integer :category_id
      t.integer :sales_status_id
      t.integer :shipping_fee_status_id
      t.integer :prefecture_id
      t.integer :scheduled_delivery_id
      t.integer :price
      t.references :user, foreign_key: true
      t.timestamps
    end
  end
end
