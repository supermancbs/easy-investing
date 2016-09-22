class UsersController < ApplicationController

  def new
    @user = User.new
  end

  def create
    byebug
  end

  private

  def private_params

  end
end
