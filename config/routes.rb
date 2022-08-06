Rails.application.routes.draw do

#管理者用deviseルート
  devise_for :admin, skip:[:registrations, :passwords], controllers: {
    sessions: "admin/sessions"
  }
#会員用deviseルート
  devise_for :users, skip: [:passwords], controllers: {
    registrations: "public/registrations",
    sessions: 'public/sessions'
  }


    get root to: 'public/homes#top'
    resources :users
    get 'users/exit'
    resources :items
    get 'homes/top'
    get 'about' => 'public/homes#about', as: 'about'

  namespace :admin do
    get 'users/index'
    patch 'users/switch/:id' => 'users#switch'
    get 'items/index'
    get 'items/show'
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end