class Order < ApplicationRecord
  belongs_to :user
  has_one :address

 # validates :user, presence: true
 # validates :token, presence: true
end
