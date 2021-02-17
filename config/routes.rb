Rails.application.routes.draw do
  get '/', to: 'users#index', as: :root
  resources :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
