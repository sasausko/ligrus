Rails.application.routes.draw do
  resources :articles
  root 'home#index'
  get 'home/beuseful'
  resources :strains
  resources :manufacturers
  resources :tags
end
