Yammergration::Application.routes.draw do
  match '/' => 'pages#home'
  match '/yammer/login' => 'pages#yammer_login'
  match '/yammer_staging/login' => 'pages#yammer_login'
  match '/login_success' => 'pages#login_success'
  match '/facebook/login' => 'pages#facebook_login'
  match '/twitter/login' => 'pages#twitter_login'
  match '/google/login' => 'pages#google_login'
  match '/box/login' => 'pages#box_login'
  match '/sandbox' => 'pages#sandbox'
  match '/client_side_flow' => 'pages#client_side_flow'
  match '/client_side_flow_staging' => 'pages#client_side_flow_staging'
  match '/client_side_flow_thunderdome' => 'pages#client_side_flow_thunderdome'
  match '/log_in_with_yammer_button' => 'pages#log_in_with_yammer_button'
  match '/log_in_with_yammer_button_staging' => 'pages#log_in_with_yammer_button_staging'
  match '/facebook/javascript_api' => 'pages#facebook_javascript_api'
  match '/login_failure' => 'pages#login_failure'

  resources :open_graph_objects
  match '/open_graph_objects/show_in_staging/:id' => 'open_graph_objects#show_in_staging'

  #Omniauth routes
  match 'auth/:provider/callback', to: 'sessions#create'
  match 'auth/failure', to: redirect('/login_failure')
  match 'signout', to: 'sessions#destroy', as: 'signout'

  # The priority is based upon order of creation:
  # first created -> highest priority.

  # Sample of regular route:
  #   match 'products/:id' => 'catalog#view'
  # Keep in mind you can assign values other than :controller and :action

  # Sample of named route:
  #   match 'products/:id/purchase' => 'catalog#purchase', :as => :purchase
  # This route can be invoked with purchase_url(:id => product.id)

  # Sample resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Sample resource route with options:
  #   resources :products do
  #     member do
  #       get 'short'
  #       post 'toggle'
  #     end
  #
  #     collection do
  #       get 'sold'
  #     end
  #   end

  # Sample resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Sample resource route with more complex sub-resources
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', :on => :collection
  #     end
  #   end

  # Sample resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end

  # You can have the root of your site routed with "root"
  # just remember to delete public/index.html.
  # root :to => 'welcome#index'

  # See how all your routes lay out with "rake routes"

  # This is a legacy wild controller route that's not recommended for RESTful applications.
  # Note: This route will make all actions in every controller accessible via GET requests.
  # match ':controller(/:action(/:id))(.:format)'
end
