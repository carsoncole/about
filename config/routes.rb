Rails.application.routes.draw do
  root "home#index"

  namespace :admin do
    resources :settings, :projects, :experiences
  end
end
