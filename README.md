# README

## users table 

| Column                | Type                | Options                   |
|-----------------------|---------------------|---------------------------|
| nickname              | string              | null: false               |
| email                 | string              | null: false, unique: true |
| encrypted_password    | string              | null: false               |
| last_name             | string              | null: false               |
| first_name            | string              | null: false               |
| last_name_kana        | string              | null: false               |
| first_name_kana       | string              | null: false               |
| user_birth_date       | date                | null: false               |

### Association

* has_many :items
* has_many :order

## items table

|Column                    |Type        |Options           |
|--------------------------|------------|------------------|
| name                     | string     | null: false       |
| info                     | text       | null: false       |
| category_id              | integer    | null: false       |
| sales_status_id          | integer    | null: false       |
| shipping_fee_status_id   | integer    | null: false       |
| prefecture_id            | integer    | null: false       |
| scheduled_delivery_id    | integer    | null: false       |
| price                    | integer    | null: false       |
| user                     | references | foreign_key: true |

### Association

- belongs_to :user
* has_one :order

## order table

|Column                    | Type       | Options           |
|--------------------------|----------- |------------------|
| user                     | references | foreign_key: true |
| item                     | references | foreign_key: true |

### Association

- has_one :address
- belongs_to :user
- belongs_to :item

## address table

|Column                    |Type        |Options            |
|--------------------------|------------|-------------------|
| postal_code              | string     | null: false       |
| prefecture_id            | string     | null: false       |
| city                     | string     | null: false       |
| address                  | string     | null: false       |
| building                 | string     | null: false       |
| phone-number             | string     | null: false       |
| order                    | references | foreign_key: true |

### Association

- belongs_to : order

