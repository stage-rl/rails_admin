Rails.application.routes.draw do
  resources :tenants do
    resources :groups do
      resources :users do
      end
    end
  end
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
