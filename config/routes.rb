Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root to:"toppages#index"
  
  #ログイン機能のやつ
  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy'
  
  #登録のやつ
  get 'signup', to: 'users#new'
  resources :users, only: [:index, :show, :new, :create]

  #チェックシートのやつ
  resources:checks
end
