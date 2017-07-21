Rails.application.routes.draw do
  get 'welcome/index'
  post 'welcome/show'
  get 'decks/:deck_id/:user_id/play', to: 'decks#search', as: 'search'
  get 'users/:user_id', to: 'users#profile', as: 'profile'
  post '/answers/options', to: 'answers#create'
  resources :games
  resources :users
  resources :decks
  resources :answers
  resources :questions
  resources :stats
  root 'welcome#index'

end
