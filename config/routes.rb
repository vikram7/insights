Rails.application.routes.draw do
  devise_for :users
  resources :insights
  get 'tags/:tag', to: 'insights#index', as: :tag
  root "welcome#index"
end
