class AccountFund < ApplicationRecord
  belongs_to :fund
  belongs_to :account
end
