class Address < ApplicationRecord
  belongs_to :order_form

  validates :postal_code, presence: true
  validates :prefecture, presence: true
  validates :city, presence: true
  validates :address, presence: true
  validates :building, presence: true
  validates :purchase_record, presence: true

end
