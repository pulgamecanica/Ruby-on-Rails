class UsersController < ApplicationController

  def new
    @user = User.new
  end

  def create
    # @user = User.new(name: params[:name], email: params[:email], password: params[:password])
    @user = User.create(user_params)
    if @user
      redirect_to new_user_path
    else
      render :new
    end 
  end

  private

  def user_params
    params.require(:user).permit(:name, :email, :password)
  end

end
