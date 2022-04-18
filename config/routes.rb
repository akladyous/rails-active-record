Rails.application.routes.draw do
    #   get 'users/index'
    #   get 'users/show'
    #   get 'users/update'
    #   get 'users/destroy'
    
    # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
    
    # Defines the root path route ("/")
    # root "articles#index"
    
    # get 'users/index'
    # get 'users/show'
    # resources :users

    resources :dogs
    # get "dogs/:id", controller: :dogs, action: :show
    # get "dogs/:id", to: "dogs#show", as: "dog"
    # get "dogs", to: "dogs#index"
    # get "dogs/new", to: "dogs#new", as: "new_dog"
end
