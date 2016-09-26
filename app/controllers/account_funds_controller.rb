class AccountFundsController < ApplicationController

  def new
    @funds = Fund.all_non_user_funds(current_user)
    @account_fund = AccountFund.new
  end

  def create
    account_fund = AccountFund.new(amount: params[:account_fund][:amount], account:current_user.account, fund_id: params[:account_fund][:id])
    if account_fund.save
      redirect_to current_user
    else
      redirect_to account_fund_new_path
    end
  end

  def index
  end
end
