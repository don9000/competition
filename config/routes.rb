Rails.application.routes.draw do
  get 'test/history'
  get 'test/past'
  get 'draws/result'
  get 'draws/prompt'
  get 'draws/winners'
  get 'draws/historical'
  get '/history', to: 'userlists#show'
  get '/new_draw', to: 'userlists#new'
resources :userlists
root 'userlists#index'
end



#                    Prefix Verb   URI Pattern                                                                              Controller#Action
#              draws_result GET    /draws/result(.:format)                                                                  draws#result
#              draws_prompt GET    /draws/prompt(.:format)                                                                  draws#prompt
#                 userlists GET    /userlists(.:format)                                                                     userlists#index
#                           POST   /userlists(.:format)                                                                     userlists#create
#              new_userlist GET    /userlists/new(.:format)                                                                 userlists#new
#             edit_userlist GET    /userlists/:id/edit(.:format)                                                            userlists#edit
#                  userlist GET    /userlists/:id(.:format)                                                                 userlists#show
#                           PATCH  /userlists/:id(.:format)                                                                 userlists#update
#                           PUT    /userlists/:id(.:format)                                                                 userlists#update
#                           DELETE /userlists/:id(.:format)                                                                 userlists#destroy
#                      root GET    /                                                                                        userlists#index
#        rails_service_blob GET    /rails/active_storage/blobs/:signed_id/*filename(.:format)                               active_storage/blobs#show
# rails_blob_representation GET    /rails/active_storage/representations/:signed_blob_id/:variation_key/*filename(.:format) active_storage/representations#show
#        rails_disk_service GET    /rails/active_storage/disk/:encoded_key/*filename(.:format)                              active_storage/disk#show
# update_rails_disk_service PUT    /rails/active_storage/disk/:encoded_token(.:format)                                      active_storage/disk#update
#      rails_direct_uploads POST   /rails/active_storage/direct_uploads(.:format)                                           active_storage/direct_uploads#create
#   get    '/help',    to: 'static_pages#help'
