class DecksController < ApplicationController
  
  def search
    @deck_id = params[:deck_id]
    @user_id = params[:user_id]
    @game = Game.create(user_id: @user_id, deck_id: @deck_id)
    render 'play'
  end
  
end
