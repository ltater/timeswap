Rails.application.routes.draw do

  # Static Pages Routes
  root 'static_pages#home'
  get 'contact' => 'static_pages#contact'
  get 'faq' => 'static_pages#faq'
  get 'about' => 'static_pages#about'
  get 'privacy' => 'static_pages#privacy'
  get 'safety' => 'static_pages#safety'
  get 'terms' => 'static_pages#terms'

  get 'thankyou_ping' => 'static_pages#thankyou_ping'
  get 'thankyou_logout' => 'static_pages#thankyou_logout'
  get 'thankyou_contract' => 'static_pages#thankyou_contract'

  get 'give_or_get_help' => 'static_pages#give_or_get_help'

  # User Routes
  get 'signup' => 'users#new'
  get 'profile_page_1' => 'users#edit'
  get 'profile_page_2' => 'users#edit_2'
  get 'profile_page_3' => 'users#edit_3'
  get 'my_profile' => 'users#show'
  get 'my_projects' => 'users#my_projects'
  get 'edit_my_profile' => 'users#edit_my_profile'
  get 'delete_my_profile' => 'users#delete_my_profile'
  get 'my_bank' => 'users#my_bank'
  get 'my_notifications' => 'users#my_notifications'
  resources :users

  # Login/Logout Routes
  get 'login' => 'sessions#new'
  #post 'login' => 'sessions#create'
  #delete 'login' => 'sessions#destroy'

  # Get Help Routes
  get 'get_help_gallery' => 'get_help#index'
  get 'get_help_new_project' => 'get_help#new'
  get 'get_help_show_project' => 'get_help#show'
  get 'get_help_edit_project' => 'get_help#edit'
  get 'get_help_archive_project' => 'get_help#archive'

  # Give Help Routes
  get 'give_help_gallery' => 'give_help#index'
  get 'give_help_new_project' => 'give_help#new'
  get 'give_help_show_project' => 'give_help#show'
  get 'give_help_edit_project' => 'give_help#edit'
  get 'give_help_archive_project' => 'give_help#archive'

  # Fake Project Routes
  get 'project_1' => 'fake_projects#project_1'
  get 'project_2' => 'fake_projects#project_2'
  get 'project_3' => 'fake_projects#project_3'
  get 'project_4' => 'fake_projects#project_4'
  get 'project_5' => 'fake_projects#project_5'
  get 'project_6' => 'fake_projects#project_6'
  get 'project_messages' => 'fake_projects#project_messages'
  get 'project_contract' => 'fake_projects#project_contract'
  get 'project_signed' => 'fake_projects#project_signed'
  get 'submit_review' => 'fake_projects#submit_review'

  # Fake User Routes
  get 'profile_1' => 'fake_users#profile_1'
  get 'profile_2' => 'fake_users#profile_2'
  get 'profile_3' => 'fake_users#profile_3'



  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  # root 'welcome#index'

  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'

  # Example of named route that can be invoked with purchase_url(id: product.id)
  #   get 'products/:id/purchase' => 'catalog#purchase', as: :purchase

  # Example resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Example resource route with options:
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

  # Example resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Example resource route with more complex sub-resources:
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', on: :collection
  #     end
  #   end

  # Example resource route with concerns:
  #   concern :toggleable do
  #     post 'toggle'
  #   end
  #   resources :posts, concerns: :toggleable
  #   resources :photos, concerns: :toggleable

  # Example resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end
end
