class UsersController < ApplicationController
  
  def new
    @user = User.new
  end

  def create

  end

  private_params
end
