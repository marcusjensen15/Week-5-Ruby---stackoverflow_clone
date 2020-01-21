Rails.application.routes.draw do
  root to: 'sessions#new'

  get '/signup' => 'users#new'
  post '/users' => 'users#create'

  get '/signin' => 'sessions#new'
  post '/signin' => 'sessions#create'
  get '/signout' => 'sessions#destroy'

  resources :users do
    resources :questions
  end

  resources :answers do
    resources :upvotes
  end

  resources :questions do
    resources :answers
    resources :upvotes
  end
end
