class WelcomeController < ApplicationController
  
  def index
    @user = User.new
  end

  def show
    @user_find = User.find_by(login) 
    if @user_find
      p"*"*50
      p "Yes the user logged"
      p @user_find
      redirect_to profile_path(@user_find)
    else
      p "Error in login"
    end
  end

  private

  def login
    params.require(:user).permit(:email, :password)
  end

end


