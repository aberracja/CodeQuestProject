Rails.application.routes.draw do

	resources :invitations, only: [:new, :create]
  
  devise_for :users, :controllers => {:registrations => "registrations"}
  resources :users, only: [:index]
  root 'welcome#index'

end
