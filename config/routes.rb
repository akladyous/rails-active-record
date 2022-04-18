Rails.application.routes.draw do
    # resources :dogs,
    #     path: "animal/dogs",
    #             path_names: {
    #                 new: "nuovo",
    #                 edit: "modifica"
    #             },
    #             param: "identifier"
    #             # defaults: {
    #             #     format: "json",
    #             # }

        
    # get     "dogs",             to: "dogs#index",   as: "dogs"
    # get     "dogs/new",         to: "dogs#new",     as: "new_dog"
    # get     "dogs(/:id)",         to: "dogs#show",    as: "dog"
    # get     "dogs/:id/edit",    to: "dogs#edit",    as: "edit_dog"
    # post    "dogs",             to: "dogs#create",  as: "create_dog"
    # patch   "dogs/:id",         to: "dogs#update",  as: "patch_dog"
    # put     "dogs/:id",         to: "dogs#update",  as: "put_dog"
    # delete  "dogs/:id",         to: "dogs#destroy", as: "destroy_dog"

    # defaults format: :json do
        namespace :api, path: "prova" do
            resources :users do
                # resources :cats, shallow: true
                # member do
                #     get "preview"
                # end
                collection do
                    post "login"
                    delete "logout"
                end
            end
        end
    # end
end

