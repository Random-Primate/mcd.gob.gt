Rails.application.routes.draw do

  resources :soliciteds, except: [:new, :destroy, :index]

  resources :beneficiarios

  resources :solicituds, except: [:edit]
  post '/solicituds/confirmar/:id',    to: 'solicituds#confirmar',      as: 'confirmar_solicitud'
  post '/solicituds/reservar/:id',     to: 'solicituds#reservar',       as: 'reservar_solicitud'
  post '/solicituds/liberar/:id',      to: 'solicituds#liberar',        as: 'liberar_solicitud'
  post '/solicituds/entregar/:id',     to: 'solicituds#entregar',       as: 'entregar_solicitud'
  post '/solicituds/rechazar/:id',     to: 'solicituds#rechazar',       as: 'rechazar_solicitud'
  post '/solicituds/activar/:id',      to: 'solicituds#activar',        as: 'activar_solicitud'
  get '/solicitud/solicitud/:id',      to: 'solicituds#descargar_sol',  as: 'nueva_sol'

  get 'welcome/thankyou'

  # Reportes
  get '/reportes/transparencia',     to: 'reportes#transparencia',        as: 'reportes_transparencia'
  get '/reporte/transparencia/:id',  to: 'reportes#transparencia_show',   as: 'reporte_perfil_transparencia'


  resources :implementos

  resources :expedientes

  resources :idiomas

  resources :pueblos

  resources :municipios

  resources :departamentos

  # User Dashboards
  get 'user_dashboard/show'
  get 'user_dashboard/departamentos', as: 'dash_deps'

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
