# == Route Map
#
#                    Prefix Verb   URI Pattern                                                                              Controller#Action
#                 api_users GET    /api/users(.:format)                                                                     api/users#index {:format=>:json}
#                           POST   /api/users(.:format)                                                                     api/users#create {:format=>:json}
#                  api_user GET    /api/users/:id(.:format)                                                                 api/users#show {:format=>:json}
#                           PATCH  /api/users/:id(.:format)                                                                 api/users#update {:format=>:json}
#                           PUT    /api/users/:id(.:format)                                                                 api/users#update {:format=>:json}
#               api_session DELETE /api/session(.:format)                                                                   api/sessions#destroy {:format=>:json}
#                           POST   /api/session(.:format)                                                                   api/sessions#create {:format=>:json}
#                api_boards GET    /api/boards(.:format)                                                                    api/boards#index {:format=>:json}
#                           POST   /api/boards(.:format)                                                                    api/boards#create {:format=>:json}
#                 api_board GET    /api/boards/:id(.:format)                                                                api/boards#show {:format=>:json}
#                           PATCH  /api/boards/:id(.:format)                                                                api/boards#update {:format=>:json}
#                           PUT    /api/boards/:id(.:format)                                                                api/boards#update {:format=>:json}
#                           DELETE /api/boards/:id(.:format)                                                                api/boards#destroy {:format=>:json}
#                  api_pins GET    /api/pins(.:format)                                                                      api/pins#index {:format=>:json}
#                           POST   /api/pins(.:format)                                                                      api/pins#create {:format=>:json}
#                   api_pin GET    /api/pins/:id(.:format)                                                                  api/pins#show {:format=>:json}
#                           PATCH  /api/pins/:id(.:format)                                                                  api/pins#update {:format=>:json}
#                           PUT    /api/pins/:id(.:format)                                                                  api/pins#update {:format=>:json}
#                           DELETE /api/pins/:id(.:format)                                                                  api/pins#destroy {:format=>:json}
#           api_boards_pins GET    /api/boards_pins(.:format)                                                               api/boards_pins#index {:format=>:json}
#                           POST   /api/boards_pins(.:format)                                                               api/boards_pins#create {:format=>:json}
#            api_boards_pin DELETE /api/boards_pins/:id(.:format)                                                           api/boards_pins#destroy {:format=>:json}
#                      root GET    /                                                                                        static_pages#root
#        rails_service_blob GET    /rails/active_storage/blobs/:signed_id/*filename(.:format)                               active_storage/blobs#show
# rails_blob_representation GET    /rails/active_storage/representations/:signed_blob_id/:variation_key/*filename(.:format) active_storage/representations#show
#        rails_disk_service GET    /rails/active_storage/disk/:encoded_key/*filename(.:format)                              active_storage/disk#show
# update_rails_disk_service PUT    /rails/active_storage/disk/:encoded_token(.:format)                                      active_storage/disk#update
#      rails_direct_uploads POST   /rails/active_storage/direct_uploads(.:format)                                           active_storage/direct_uploads#create

Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  namespace :api, defaults: {format: :json} do
    resources :users, only: [:create, :index, :show, :update]
    resource :session, only: [:create, :destroy]
    resources :boards, only: [:create, :index, :show, :update, :destroy]
    resources :pins, only: [:create, :index, :show, :update, :destroy]
    resources :boards_pins, only: [:create, :index, :destroy]
  end

  root to: "static_pages#root"
end
