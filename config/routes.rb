Rails.application.routes.draw do
  namespace :admin do
    resources :experiences
  end

  root "home#index"

  namespace "admin" do
    resources :settings, :projects
  end
end
