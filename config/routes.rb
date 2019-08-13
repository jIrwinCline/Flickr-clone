Rails.application.routes.draw do
  root to: 'images#index'
  resources :images do
    resources :comments
  end
end
