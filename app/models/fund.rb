class Fund < ApplicationRecord
  has_many :account_funds
  has_many :accounts, through: :account_funds
end
