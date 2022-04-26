class Item < ApplicationRecord
  belongs_to :user
  has_one_attached :image
  extend ActiveHash::Associations::ActiveRecordExtensions

  validates :item_name, presence: true
  validates :item_info, presence: true
  validates :item_sales_status, presence: true  
  validates :item_shipping_fee_status, presence: true 
  validates :item_category, presence: true
  validates :item_prefecture ,presence: true
  validates :item_scheduled_delivery, presence: true
  validates :item_price, presence: true
end
