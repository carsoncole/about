Rails.application.routes.draw do
  root "home#index"

  resources :projects, only: :show

  namespace :admin do
    resources :settings, :projects, :experiences
  end
end
