Rails.application.routes.draw do



#管理者用deviseルート
  devise_for :admin, skip:[:registrations, :passwords], controllers: {
    sessions: "admin/sessions"
  }
  devise_scope :admin do
    get '/admin/sign_out' => 'devise/sessions#destroy'
  end

#会員用deviseルート
  devise_for :users, skip: [:passwords], controllers: {
    registrations: "public/registrations",
    sessions: 'public/sessions'
  }

#会員用
    get root to: 'public/homes#top'
    get 'users' => 'public/users#show', as: 'user'
    get 'users/edit' => 'public/users#edit', as: 'user_edit'
    patch 'users' => 'public/users#update'
    resources :subitems, only: [:index, :create, :new, :edit, :show, :update, :destroy]
    get 'users/exit'
    get 'homes/top'
    get 'about' => 'public/homes#about', as: 'about'
    get 'shoppingmemos/index'

#管理者用
  namespace :admin do
    resources :users
    patch 'users/:id' => 'users#update'
    resources :items
    resources :categories, only: [:new,:index,:edit,:update]
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end