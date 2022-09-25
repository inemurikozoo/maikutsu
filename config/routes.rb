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
    registrations: 'public/registrations',
    sessions: 'public/sessions'
  }

#会員用
    get root to: 'public/homes#top'

    get 'users' => 'public/users#show', as: 'user'
    get 'users/edit' => 'public/users#edit', as: 'user_edit'
    patch 'users' => 'public/users#update'
    get 'users/exit' => 'public/users#exit', as: 'user_exit'

    get 'subitems' => 'public/subitems#index', as: 'subitems'
    get 'subitems/new' => 'public/subitems#new', as: 'new_subitem'
    post 'subitems' => 'public/subitems#create', as: 'create_subitem'
    delete 'subitems' => 'public/subitems#destroy_all', as: 'all_destroy_subitem'
    get 'subitems/:id/edit' => 'public/subitems#edit', as: 'edit_subitem'
    get 'subitems/:id' => 'public/subitems#show', as: 'subitem'
    patch 'subitems/:id' => 'public/subitems#update', as: 'update_subitem'
    delete 'subitems/:id' => 'public/subitems#destroy', as: 'destroy_subitem'
    post 'subitems/update_all', to: 'public/subitems#update_all', as: 'all_update_subitems'

    get 'homes/top'
    get 'about' => 'public/homes#about', as: 'about'

    get 'shoppingmemos/index' => 'public/shoppingmemos#index'
    post 'shoppingmemos/index' => 'public/shoppingmemos#selected_create'
    delete 'shoppingmemos/:id' => 'public/shoppingmemos#destroy', as: 'destroy_shoppingmemo'

    # sub_itemの一覧画面のソート
    get 'sub_item/index/sort_default', to: 'public/subitems#index', as: 'sort_default'
    get 'sub_item/index/sort_category', to: 'public/subitems#index', as: 'sort_category'
    get 'sub_item/index/sort_name', to: 'public/subitems#index', as: 'sort_name'



#管理者用
  namespace :admin do
    resources :users
    patch 'users/:id' => 'users#update'
    resources :items
    resources :categories, only: [:new,:create,:index,:edit,:update]
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end