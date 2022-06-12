Rails.application.routes.draw do
      # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  devise_for :users

  root to: "pages#index"

  resources :pages do
    member do      
      get "versions", to: "pages#versions"
    end
  end
end
