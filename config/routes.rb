Rails.application.routes.draw do
  # root to: ''
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
