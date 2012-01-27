Tweeter::Application.routes.draw do

  devise_for :users

  #resource :followings#show
  #resource :followings#index
  #resource :followings#new
  #resource :followings#destroy
  resources :follows

  resources :tweets
  resources :followings

  resources :users
  root :to => 'tweets#index'
  match 'following/:id/:follow_user_id'=> 'following#create', :as=>:create
  match 'followings/new/:follow_user_id'=>'followings#create',  :as=>:create
  match 'following/'=>'followings#index'
  match 'following/:id'=>'followings#index'
 # match 'followings'=>'followings#index'
  #match 'follows/:follow_user_id' =>'follows#create'
 # match 'followings/show/:id' => 'followings#show'
 # match 'followings/:id'=> 'followings#index'
 # match 'followings/:following_user_id/new, :to'=>'followings#new'

  devise_for :users,  :class_name => 'User'
  devise_scope :user do
    root :to=> "devise/registrations#new"
  end
  # The priority is based upon order of creation:
  # first created -> highest priority.

  # Sample of regular route:
  #   match 'products/:id' => 'catalog#show'
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
  # match ':controller(/:action(/:id(.:format)))'
end
