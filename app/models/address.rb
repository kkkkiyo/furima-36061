class Address < ApplicationRecord
  belongs_to :order

  # validates :postal_code, presence: true
  # validates :prefecture, presence: true
  # validates :city, presence: true
  # validates :address, presence: true
  # validates :building, presence: true

end
