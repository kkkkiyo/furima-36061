FactoryBot.define do
  factory :user do
    nickname              { '鈴木' }
    email                 { 'test@example' }
    password              { 'sample0000' }
    password_confirmation { password }
    last_name             { '鈴木' }
    first_name            { '太郎' }
    last_name_kana        { 'スズキ' }
    first_name_kana       { 'タロウ' }
    birth_date            { '1989-10-15' }
  end
end
