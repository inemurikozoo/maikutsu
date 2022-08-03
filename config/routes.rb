Rails.application.routes.draw do
  
  
  devise_for :admin, skip:[:registrations, :passwords], controllers: {
    sessions: "admin/sessions"
  }
  
  devise_for :users, skip: [:passwords], controllers: {
    registrations: "public/registrations",
    sessions: 'public/sessions'
  }
  
    get root to: 'public/homes#top'
  namespace :public do
    get 'users/show'
    get 'users/edit'
    get 'users/update'
    get 'users/exit'
  end
  namespace :public do
    get 'items/index'
    get 'items/show'
    get 'items/create'
    get 'items/edit'
    get 'items/update'
    get 'items/destroy'
  end
  namespace :public do
    get 'homes/top'
    get 'homes/about'
  end
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