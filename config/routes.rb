Rails.application.routes.draw do

  resources :soliciteds

  resources :beneficiarios

  #resources :solicituds
  resources :solicituds, except: [:edit]

  get 'welcome/thankyou'

  resources :implementos

  resources :expedientes

  resources :idiomas

  resources :pueblos

  resources :municipios

  resources :departamentos

  # User Dashboards
  get 'user_dashboard/show'

  # Pages
  resources :pages

  # Rails Admin
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'

  # Articles and Comments
  resources :articles, except: [:new, :destroy]

  # Devise
  devise_for  :users,   controllers: { registrations: 'registrations' }
  resources   :users,   only: [:index, :edit_user]

  # Users
  get     '/user/:id',              to: 'user#show',          as: :user
  get     '/users/new_user',        to: 'users#new_user',     as: 'admins_new_user'
  post    '/users/create_user',     to: 'users#create_user',  as: 'admins_create_user'
  get     '/users/edit_user/:id',   to: 'users#edit_user',    as: 'admins_edit_user'
  patch   '/users/update_user/:id', to: 'users#update_user',  as: 'admins_update_user'
  delete  '/user/:id',              to: 'users#destroy_user', as: 'admins_destroy_user'

  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  # root 'welcome#index'
  root 'welcome#index'

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
