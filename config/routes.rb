Rails.application.routes.draw do
  root 'seminars#index'
  resources :schedules
  resources :seminars
  resources :venues
end
