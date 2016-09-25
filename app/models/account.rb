class Account < ApplicationRecord
  belongs_to :user
  has_many :account_funds
  has_many :funds, through: :account_funds

  def decrease_balance(amount)
    self.balace-=amount
  end

  def increase_balance(amount)
    self.balace+=amount
  end


end
