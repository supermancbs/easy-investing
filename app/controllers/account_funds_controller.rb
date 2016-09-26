class AccountFundsController < ApplicationController

  def new
    debugger
    @funds = Fund.all_non_user_funds(current_user)
    @account_fund = AccountFund.new
  end

  def create
    @funds = Fund.all_non_user_funds(current_user)
  end

  def index
  end
end
