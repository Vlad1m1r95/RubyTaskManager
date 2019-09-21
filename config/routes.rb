Rails.application.routes.draw do
devise_for :users, :controllers => {:registrations => "myregistrations"}
 root 'dashboard#index'
default_url_options host: Rails.application.config.domain

resources :tasks do
  resources :comments
end
resources :dashboard, only: [:index]
resources :profile, only: [:index]
devise_scope :user do
  get '/sign-in' => "devise/sessions#new", :as => :login
end
# namespace :user do
#   root :to => "dashboard#index"
# end


# namespace :user do
#   root :to => "dashbord#index"
# end
end
