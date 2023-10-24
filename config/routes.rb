Rails.application.routes.draw do
  get "up" => "rails/health#show", as: :rails_health_check

  root "home#index"

  resources :passwords, controller: "clearance/passwords", only: [:create, :new]
  resource :session, controller: "clearance/sessions", only: [:create]

  resources :users, controller: "clearance/users", only: [:create] do
    resource :password,
      controller: "clearance/passwords",
      only: [:edit, :update]
  end

  get "/sign_in" => "clearance/sessions#new", as: "sign_in"
  delete "/sign_out" => "clearance/sessions#destroy", as: "sign_out"
  get "/sign_up" => "clearance/users#new", as: "sign_up"

  get '/about' => 'home#about', as: 'about'
  get '/source' => 'home#source', as: 'source'
  get '/resume' => 'resume#show', as: 'resume'
  get '/sitemap' => 'home#sitemap', as: 'sitemap'


  resources :projects, only: [:show, :index]
  resources :experiences, only: :index

  namespace :admin do
    resources :settings, :projects, :experiences, :educations
  end
end
