Rails.application.routes.draw do
  resources :clients 
  resources :orders
  resources :models
  resources :categories

  get "users/show" => "users#show"

  devise_for :users 
  
  root "orders#index"

  namespace :admin do 
    resources :users 
  end
  
  if Rails.env.development?
    mount LetterOpenerWeb::Engine, at: "/letter_opener"
  end

  devise_scope :user do
    post 'users/guest_sign_in', to: 'users/sessions#guest_sign_in'
    post 'users/guest_admin_sign_in', to: 'users/sessions#guest_admin_sign_in'
  end
end
