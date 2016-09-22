class User < ApplicationRecord
  has_one :account
  has_many :funds, through: :account

  has_secure_password
end
