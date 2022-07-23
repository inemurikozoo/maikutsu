Rails.application.routes.draw do
  devise_for :admin,controllers: {
    session: "admin/sessions"
  }
  devise_for :users,controllers: {
    ragistrations: "public/registrations",
    sessions: 'public/sessions'
  }
  
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
