FactoryBot.define do
  factory :order_address do
    postal_code     { '123-4567' }
    prefecture_id   { '2' }
    city            { '東京都' }
    address         { '千葉市' }
    building        { '1-2-3' }
    phone_number    { '08012345678' }
    token           {"tok_abcdefghijk00000000000000000"}  
  end
end
