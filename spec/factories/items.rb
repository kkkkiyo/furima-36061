FactoryBot.define do
  factory :item do
    association :user

    item_name                { '鈴木' }
    item_info                { 'これは可愛いぬいぐるみです' }
    category_id              { '2' }
    sales_status_id          { '2' }
    shipping_fee_status_id   { '2' }
    scheduled_delivery_id    { '2' }
    prefecture_id            { '2' }
    price                    { '300' }
  end
end
