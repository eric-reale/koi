Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'

  get "/browse", to: "browse#browse", as: :browse
  post "/approve/:id", to: "browse#approve", as: :approve_user
  post "/decline/:id", to: "browse#decline", as: :decline_user
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
