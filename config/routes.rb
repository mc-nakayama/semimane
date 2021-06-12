Rails.application.routes.draw do
  root 'seminars#index'
  resources :seminars
end
