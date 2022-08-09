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

#会員用
    get root to: 'public/homes#top'
    resources :users
    get 'users/exit'
    resources :items
    get 'homes/top'
    get 'about' => 'public/homes#about', as: 'about'

#管理者用
  namespace :admin do
    resources :users
    patch 'users/:id' => 'users#update'
    resources :items
    resources :categories, only: [:new,:index,:show,:edit]
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end