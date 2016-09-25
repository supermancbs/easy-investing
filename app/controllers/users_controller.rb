class UsersController < ApplicationController
before_filter :authorize
  def new
    @user = User.new
  end

  def create
    if @user = User.create(private_params_create_user)
      session[:user_id] = @user.id
      redirect_to new_account_path
    else
      render 'new'
    end
  end

  def show
    @user = User.find(params[:id])
  end

  private

  def private_params_create_user
    params.require(:user).permit(:first_name, :last_name, :email, :address, :password, :password_confirmation)
  end
end
