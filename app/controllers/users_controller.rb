class UsersController < ApplicationController

  def new
    @user = User.new
  end

  def create
    if @user = User.create(private_params_create_user)
      redirect_to new_account_path(:user_id => params[:user_id])
    else
      render 'new'
    end
  end

  private

  def private_params_create_user
    params.require(:user).permit(:first_name, :last_name, :email, :address, :password, :password_confirmation)
  end
end
