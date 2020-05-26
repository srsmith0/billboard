Rails.application.routes.draw do
  root 'charts#index'
  
  resources :artists do
    resources :songs
  end
  resources :charts
  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
