Rails.application.routes.draw do
  root to: 'comments#new'
  resources :comments
end
