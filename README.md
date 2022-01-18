# README

## users table 

| Column                | Type                | Options                   |
|-----------------------|---------------------|---------------------------|
| nickname              | string              | null: false               |
| email                 | string              | null: false, unique: true |
| encrypted_password    | string              | null: false               |
| last_name             | string              | null: false               |
| first_name            | string              | null: false               |
| last-name-kana        | string              | null: false               |
| first-name-kana       | string              | null: false               |
| user_birth_date       | date                | null: false               |

### Association

* has_many :items
* has_many :shipping infomation


## items table

|Column                    |Type        |Options           |
|--------------------------|------------|------------------|
| name                     | string     | null: false       |
| info                     | text       | null: false       |
| category_id              | integer    | null: false       |
| sales_status_id          | integer    | null: false       |
| shipping_fee_status_id   | integer    | null: false       |
| prefecture_id            | integer    | null: false       |
| scheduled-delivery_id    | integer    | null: false       |
| price                    | integer    | null: false       |
| user                     | references | foreign_key: true |

### Association

- belongs_to :users
* has_one :Purchase record

## Purchase record table

|Column                    |Type      |Options           |
|--------------------------|----------- |------------------|
| user                     | references | foreign_key: true |
| items                    | references | foreign_key: true |

### Association

- has_one : shipping infomation
* has_many :users,items

## shipping infomation table

|Column                    |Type      |Options           |
|--------------------------|--------  |------------------|
| postal_code              |string    |null: false       |
| prefectures              |text      |null: false       |
| prefecture_id            |string    |null: false       |
| address                  |string    |null: false       |
| building                 |string    |                  |
| phone-number             |string    |null: false       |

### Association

- belongs_to : purchase record

