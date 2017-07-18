Rails.application.routes.draw do  
  get '/abuelita'  => 'index#index'
  post '/abuelita' => 'index#new_word'
  root 'index#index'

end
