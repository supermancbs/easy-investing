class AccountFund < ApplicationRecord
  belongs_to :fund
  belongs_to :account

  def joins_account
    AccountFund.joins(:account)
  end
end
