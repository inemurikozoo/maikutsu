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
    root to: 'public/homes#top'

    get 'users' => 'public/users#show', as: 'user'
    get 'users/edit' => 'public/users#edit', as: 'user_edit'
    patch 'users' => 'public/users#update'
    get 'users/exit' => 'public/users#exit', as: 'user_exit'

    get 'subitems/new' => 'public/subitems#new', as: 'new_subitem'
    post 'subitems' => 'public/subitems#create', as: 'create_subitem'
    get 'subitems/:id' => 'public/subitems#show', as: 'subitem'
    get 'subitems' => 'public/subitems#index', as: 'subitems'
    get 'subitems/:id/edit' => 'public/subitems#edit', as: 'edit_subitem'
    patch 'subitems/:id' => 'public/subitems#update', as: 'update_subitem'
    delete 'subitems/:id' => 'public/subitems#destroy', as: 'destroy_subitem'
    post 'subitems/:id' => 'public/subitems#update_index', as: 'subitems_update'
    delete 'subitems' => 'public/subitems#destroy_all', as: 'all_destroy_subitem'

    get 'homes/top'
    get 'about' => 'public/homes#about', as: 'about'

    get 'shoppingmemos/index' => 'public/shoppingmemos#index'
    post 'shoppingmemos/index' => 'public/shoppingmemos#selected_create'
    post 'shoppingmemos/:id' => 'public/shoppingmemos#delete_memo', as: 'delete_shoppingmemo'
    get 'shoppingmemos/finish' => 'public/shoppingmemos#finish', as: 'shopping_finish'
    patch 'shoppingmemos/update_all', to: 'public/shoppingmemos#update_all'
    # sub_itemの一覧画面のソート
    get 'sub_item/index/sort_default', to: 'public/subitems#index', as: 'sort_default'
    get 'sub_item/index/sort_category', to: 'public/subitems#index', as: 'sort_category'
    get 'sub_item/index/sort_name', to: 'public/subitems#index', as: 'sort_name'

    get 'notification/index', to: 'public/notification#index', as: 'notifications'
    delete 'notification/:id', to: 'public/notification#destroy', as: 'notification_destroy'

#管理者用
  namespace :admin do
    resources :users
    resources :items
    resources :categories
  end
# ゲストログイン
  post '/homes/guest_sign_in', to: 'public/homes#guest_sign_in'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end