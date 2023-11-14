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

  get "solutions" => "home#solutions", as: "solutions"


  get "/sign_in" => "clearance/sessions#new", as: "sign_in"
  delete "/sign_out" => "clearance/sessions#destroy", as: "sign_out"
  get "/sign_up" => "clearance/users#new", as: "sign_up"

  get '/sitemap' => 'home#sitemap', as: 'sitemap'

  if PROJECTS_DISPLAYED
    resources :projects, only: [:index]
  end

  if EXPERIENCES_DISPLAYED
    resources :experiences, only: :index
  end

  if SOURCE_DISPLAYED
    get '/source' => 'home#source', as: 'source'
  end

  if WORK_WITH_ME_DISPLAYED
    get '/work-with-me' => 'home#work_with_me', as: 'work_with_me'
  end

  namespace :admin do
    resources :projects, :experiences

    resources :educations, only: [:index, :edit, :new, :create, :update, :destroy ]
    resources :settings, only: [:edit, :new, :update, :create]
  end
end
