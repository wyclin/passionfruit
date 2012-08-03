Inaika::Application.routes.draw do


  #LANDING PAGE  
  get "landing_page/thankyou"
  get "landing_page/faq"
  get "landing_page/conditions"
  get "landing_page/contact"
  get "landing_page/main"
  get "landing_page/new"

  match 'landing_page/new' => 'landing_page#new', :as => 'landing_page', :via => :get
  match 'landing_page/new' => 'landing_page#create', :as => 'landing_page', :via => :post  
  match 'thankyou' => 'landing_page#thankyou'
  match 'faq' => 'landing_page#faq'
  match 'conditions' => 'landing_page#conditions'
  match 'contact' => 'landing_page#contact'
  match 'revolution' => 'landing_page#new'
  match 'landing_page' => 'landing_page#main'
  
  

  #DEMOs
  root :to => 'demo#welcome'

  get 'demo/student_account'
  get 'demo/student_calendar'
  get 'demo/payment'
  get 'demo/results'
  get "demo/welcome"
  get 'demo/student_profile'
  get 'demo/search'
  get 'demo/teacher_profile_john'
  get 'demo/teacher_calendar'
  get 'demo/oops'
  get 'demo/end'  
  get 'demo/shared_class_info'
  get 'demo/confirmation'

  match 'demo' => 'demo#welcome'
  match 'demo/feedback' => 'demo#new'
  match 'demo/new' => 'demo#new', :as => 'demo', :via => :get
  match 'demo/new' => 'demo#create', :as => 'demo', :via => :post  
  match 'demo/feedback_thankyou' => 'demo#feedback_thankyou'
  match '/student_signup_demo', to: 'demo#student_signup'
  match '/teacher_signup_demo', to: 'demo#teacher_signup'
  match '/student_signup_demo', to: 'students#new_demo'

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
  

  # See how all your routes lay out with "rake routes"

  # This is a legacy wild controller route that's not recommended for RESTful applications.
  # Note: This route will make all actions in every controller accessible via GET requests.
  # match ':controller(/:action(/:id))(.:format)'
end
