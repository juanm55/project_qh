Qh::Application.routes.draw do
  
  resources :addresses, :except => [:show, :index]
  
  resources :categorizations
  
  resources :places
  resources :cplaces
  resources :cmoneys, :except => :show
  resources :copens, :except => :show

  devise_for :users, :path => '', :path_names => { :sign_in => "login", :sign_out => "logout", :sign_up => "register" }, :controllers => { :registrations => "users/registrations" }
  
  match '/contact', :to => 'pages#contact'
  match "dispatch_email", to: "pages#dispatch_email", as: "dispatch_email", method: :post
  match '/about',   :to => 'pages#about'
  
  root :to => 'pages#home'


end
#== Route Map
# Generated on 27 Aug 2011 13:12
#
#                          POST   /places(.:format)           {:action=>"create", :controller=>"places"}
#                new_place GET    /places/new(.:format)       {:action=>"new", :controller=>"places"}
#               edit_place GET    /places/:id/edit(.:format)  {:action=>"edit", :controller=>"places"}
#                    place GET    /places/:id(.:format)       {:action=>"show", :controller=>"places"}
#                          PUT    /places/:id(.:format)       {:action=>"update", :controller=>"places"}
#                          DELETE /places/:id(.:format)       {:action=>"destroy", :controller=>"places"}
#                  cplaces GET    /cplaces(.:format)          {:action=>"index", :controller=>"cplaces"}
#                          POST   /cplaces(.:format)          {:action=>"create", :controller=>"cplaces"}
#               new_cplace GET    /cplaces/new(.:format)      {:action=>"new", :controller=>"cplaces"}
#              edit_cplace GET    /cplaces/:id/edit(.:format) {:action=>"edit", :controller=>"cplaces"}
#                   cplace GET    /cplaces/:id(.:format)      {:action=>"show", :controller=>"cplaces"}
#                          PUT    /cplaces/:id(.:format)      {:action=>"update", :controller=>"cplaces"}
#                          DELETE /cplaces/:id(.:format)      {:action=>"destroy", :controller=>"cplaces"}
#                  cmoneys GET    /cmoneys(.:format)          {:action=>"index", :controller=>"cmoneys"}
#                          POST   /cmoneys(.:format)          {:action=>"create", :controller=>"cmoneys"}
#               new_cmoney GET    /cmoneys/new(.:format)      {:action=>"new", :controller=>"cmoneys"}
#              edit_cmoney GET    /cmoneys/:id/edit(.:format) {:action=>"edit", :controller=>"cmoneys"}
#                   cmoney PUT    /cmoneys/:id(.:format)      {:action=>"update", :controller=>"cmoneys"}
#                          DELETE /cmoneys/:id(.:format)      {:action=>"destroy", :controller=>"cmoneys"}
#                   copens GET    /copens(.:format)           {:action=>"index", :controller=>"copens"}
#                          POST   /copens(.:format)           {:action=>"create", :controller=>"copens"}
#                new_copen GET    /copens/new(.:format)       {:action=>"new", :controller=>"copens"}
#               edit_copen GET    /copens/:id/edit(.:format)  {:action=>"edit", :controller=>"copens"}
#                    copen PUT    /copens/:id(.:format)       {:action=>"update", :controller=>"copens"}
#                          DELETE /copens/:id(.:format)       {:action=>"destroy", :controller=>"copens"}
#         new_user_session GET    /login(.:format)            {:action=>"new", :controller=>"devise/sessions"}
#             user_session POST   /login(.:format)            {:action=>"create", :controller=>"devise/sessions"}
#     destroy_user_session GET    /logout(.:format)           {:action=>"destroy", :controller=>"devise/sessions"}
#            user_password POST   /password(.:format)         {:action=>"create", :controller=>"devise/passwords"}
#        new_user_password GET    /password/new(.:format)     {:action=>"new", :controller=>"devise/passwords"}
#       edit_user_password GET    /password/edit(.:format)    {:action=>"edit", :controller=>"devise/passwords"}
#                          PUT    /password(.:format)         {:action=>"update", :controller=>"devise/passwords"}
# cancel_user_registration GET    /cancel(.:format)           {:action=>"cancel", :controller=>"users/registrations"}
#        user_registration POST   /(.:format)                 {:action=>"create", :controller=>"users/registrations"}
#    new_user_registration GET    /register(.:format)         {:action=>"new", :controller=>"users/registrations"}
#   edit_user_registration GET    /edit(.:format)             {:action=>"edit", :controller=>"users/registrations"}
#                          PUT    /(.:format)                 {:action=>"update", :controller=>"users/registrations"}
#                          DELETE /(.:format)                 {:action=>"destroy", :controller=>"users/registrations"}
#                  contact        /contact(.:format)          {:controller=>"pages", :action=>"contact"}
#           dispatch_email        /dispatch_email(.:format)   {:method=>:post, :action=>"dispatch_email", :controller=>"pages"}
#                    about        /about(.:format)            {:controller=>"pages", :action=>"about"}
#                     root        /(.:format)                 {:controller=>"pages", :action=>"home"}
