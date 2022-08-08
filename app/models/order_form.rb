class OrderForm
  include ActiveModel::ActiveModel
  attr_accessor :user, :item, :postal_code, :prefecture, :city, :address, :building, :phone_number, :order_id

  with_options presence: true do
    validates :user
    validates :postal_code, format: {with: /\A[0-9]{3}-[0-9]{4}\z/, message: "is invalid. Include hyphen(-)"}
  end
  validates :prefecture, numericality: {other_than: 0, message: "can't be blank"}

  def save
      order = order.create(user: user, item: item)
      Address.create(postal_code: postal_code, prefecture: prefecture, city: city, address:address, building:building, phone_number:phone_number, order_id:order_id)
  end
end