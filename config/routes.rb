TMS::Application.routes.draw do
  get "sessions/new"

  get "pay/index"

  get "ticketselection/index"

  get "options/index"

  get "show/update"

  get "configure_theatreshow/index"

  get "theatre/index"

  get "theatre/new"

  post "theatre/create"

  get "theatre/configure"

  get "theatre/configureshow"

  get "theatre/details"

  get "showtime/index"

  get "showtime/new"
  
  post "showtime/create"

  post "show/update"

  get "admin/index"

  get "movie/index"

  get "movie/new"

  post "movie/create"

  get "movie/details"

  get "certificate/index"

  get "certificate/new"

  post "certificate/create"

  get "now_showing/index"

  post "options/index"

  get "booktickets/index"

  get "ticketselection/index"

  post "pay/index"

  post "pay/submit"

  get "log_in" => "session#new", :as => "log_in"
  resources :sessions


  get "admin/theatreindex"
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
  root  :to => 'now_showing#index'
end
