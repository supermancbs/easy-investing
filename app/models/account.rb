class Account < ApplicationRecord
  belongs_to :user
  has_many :account_funds
  has_many :funds, through: :account_funds
end
