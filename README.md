# README

## users table 

| Column                | Type                | Options                 |
|-----------------------|---------------------|-------------------------|
| nickname              | string              | null: false             |
| email                 | string              | null: false             |
| password              | string              | null: false             |
| password-confirmation | string              | null: false             |
| last-name             | string              | null: false             |
| first-name            | string              | null: false             |

### Association

* has_many :items

## items table

|Column                    |Type        |Options           |
|--------------------------|------------|------------------|
| item-name                | string     | null: false       |
| item-info                | text       | null: false       |
| item-category            | string     | null: false       |
| item-sales-status        | string     | null: false       |
| item-shipping-fee-status | string     | null: false       |
| item-prefecture          | string     | null: false       |
| item-scheduled-delivery  | string     | null: false       |
| item-price               | string     | null: false       |
| user_id                  | references | foreign_key: true |

### Association

- belongs_to :users

## Purchase record table

|Column                    |Type      |Options           |
|--------------------------|--------  |------------------|
| user                     |string    |null: false       |
| items_id                 |string    |null: false       |

### Association

- has_one : shipping infomation

## shipping infomation table

|Column                    |Type      |Options           |
|--------------------------|--------  |------------------|
| postal-code              |string    |null: false       |
| prefectures              |text      |null: false       |
| city                     |string    |null: false       |
| address                  |string    |null: false       |
| item-shipping-fee-status |string    |null: false       |
| building                 |string    |null: false       |
| phone-number             |string    |null: false       |

### Association

- belongs_to : Purchase record

