Rails.application.routes.draw do
  get 'home/index' => "home#index"
  get 'stats/index' => "stats#index"
  resources :clients 
  resources :orders do
    resources :comments
  end
  resources :models
  resources :categories

  get "users/show" => "users#show"
  
  devise_for :users 
  
  root "home#index"
  get '/orders' => "orders#index", :as => :user_root
  
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
