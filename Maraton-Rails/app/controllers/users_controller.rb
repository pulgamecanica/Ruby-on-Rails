class UsersController < ApplicationController
  
  def new
    @users = User.all
  end

  def create
    # @user = User.new(name: params[:name], email: params[:email], password: params[:password])
    @user = User.new(user_params)
    if @user.save
      redirect_to profile_path(@user)
    else
    p  "Error"
    end 
  end

  def profile
    p params
    @user = User.find(params[:user_id])
    render 'new'
  end

  private

  def user_params
    params.require(:user).permit(:name, :email, :password)
  end
  
end
