Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  # Defines the root path route ("/")
  # root "articles#index"
  # mount SwaggerUiEngine::Engine, at: "/"
  namespace :api do
    namespace :v1 do
      resources :sections
      resources :answers
      resources :questions
    end
  end

  resources :swagger, only: [:index]
  resources :apidocs, only: [:index]

end
