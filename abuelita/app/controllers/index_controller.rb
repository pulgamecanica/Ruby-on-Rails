class IndexController < ApplicationController

def index
end

def new_word
    @word = params[:new_word]
    @abuelita = abuelita_say(@word)
end

private

def abuelita_say(word)
  p"Dentro de abuelita say" "*"*50 
  if word.upcase == word && word != "BYE"
  p  @abuelita =  'NO, NO DESDE 1983'
  render 'index'
  elsif word.downcase == word
  p  @abuelita =  'HUH?! NO TE ESCUCHO, HIJO!'
  render 'index'
  elsif word == "BYE"
  p  @abuelita = 'BYE TQM'
  render 'index'
  end
  
 end
end





 
