class Item < ApplicationRecord
  belongs_to :user
  has_one_attached :image
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :shipping_fee_status
  belongs_to :category
  belongs_to :prefecture
  belongs_to :sales_status
  belongs_to :scheduled_delivery

  validates :item_name, presence: true
  validates :item_info, presence: true
  validates :category_id, presence: true, numericality: { other_than: 1 }
  validates :sales_status_id, presence: true, numericality: { other_than: 1 }
  validates :shipping_fee_status_id, presence: true, numericality: { other_than: 1 }
  validates :prefecture_id, presence: true, numericality: { other_than: 1 }
  validates :scheduled_delivery_id, presence: true, numericality: { other_than: 1 }
  validates :price, presence: true,
                    numericality: { only_integer: true, greater_than_or_equal_to: 300, less_than_or_equal_to: 9_999_999 }
end
