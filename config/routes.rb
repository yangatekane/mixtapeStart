Musicbox::Application.routes.draw do

<<<<<<< HEAD
  resources :tracks

  devise_for :artists
=======
  get "comment/new"

  get "comment/create"

  get "comment/show"

  get "comment/index"

  
  match "/comment",:to => "tracks#create_comment"
  
  match "/download",:to =>"tracks#download"

 resources :arist_colections
  resources :tracks

  devise_for :artists do 
  	match '/artist', :controller =>'artists',:action =>'show',:as => :artist_root
  	
  end
>>>>>>> eb2b69e19f0aba86f85859414b8a6260d7286162
  devise_for :artists, :controllers =>{:registrations => "registrations"}

  namespace :artist do 
	  root :to => "artists#register"
	  end


<<<<<<< HEAD
=======
 #what happens after login:
 #map.artist_root "/artists", :controller => "artists"


>>>>>>> eb2b69e19f0aba86f85859414b8a6260d7286162

 resources :artists, :only =>[:index,:show, :edit, :destroy, :update]
 match '/featured' ,:to =>'artists#index'
 match '/about', :to => 'home#about'
 match '/contact', :to =>'home#contact'

 resource :microposts
  
  
<<<<<<< HEAD
=======
 match '/personal_tracks', :to =>'tracks#personal_tracks'
>>>>>>> eb2b69e19f0aba86f85859414b8a6260d7286162


  get "pages/home"

  get "pages/about"


 

  
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
   root :to => "home#index"

  # See how all your routes lay out with "rake routes"

  # This is a legacy wild controller route that's not recommended for RESTful applications.
  # Note: This route will make all actions in every controller accessible via GET requests.
  # match ':controller(/:action(/:id(.:format)))'
end
