class Fund < ApplicationRecord
  has_many :account_funds
  has_many :accounts, through: :account_funds

  def self.all_non_user_funds(user)
    Fund.where.not(id: user.available_funds)
  end
end
