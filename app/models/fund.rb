class Fund < ApplicationRecord
  has_many :account_funds
  has_many :accounts, through: :account_funds

  def all_non_user_funds
    user = User.find(sessions[:user_id])
  end
end
