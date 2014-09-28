Rails.application.routes.draw do
  devise_for :users
  resources :insights do
    resources :tags
  end
  root "welcome#index"
end
