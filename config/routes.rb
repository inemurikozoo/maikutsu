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
    get 'users/show'
    get 'users/edit'
    get 'users/update'
    get 'users/exit'
    get 'items/index'
    get 'items/show'
    get 'items/create'
    get 'items/edit'
    get 'items/update'
    get 'items/destroy'
    get 'homes/top'
    get 'about' => 'public/homes#about', as: 'about'

  namespace :admin do
    get 'users/index'
    get 'users/show'
    get 'users/edit'
    get 'users/update'
    get 'items/index'
    get 'items/show'
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end