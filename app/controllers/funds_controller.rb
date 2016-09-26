class FundsController < ApplicationController
before_filter :authorize

  def index
    @funds = Fund.all_non_user_funds(current_user)

  end

  def new
    byebug
  end

  def create
    byebug
  end
end
