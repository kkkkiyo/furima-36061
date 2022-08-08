class CreateShippingInfomations < ActiveRecord::Migration[6.0]
  def change
    create_table :shipping_infomations do |t|
      t.string   :postal_code,        null: false
      t.string   :prefecture,         null: false
      t.string   :city,               null: false
      t.string   :address,            null: false
      t.string   :building,           null: false
      t.string   :phone_number,       null: false
      t.references :purchase_record,  foreign_key: true

      t.timestamps
    end
  end
end
