class AccountsController < ApplicationController
  def new
    @account = Account.new
  end

  def create
    @user = User.find(session[:user_id])
    if Account.create(user: @user, balance: private_params_create_account[:balance])
      redirect_to @user
    else
      render 'new'
    end
  end

  private
  def private_params_create_account
    params.require(:account).permit(:balance)
  end
end
