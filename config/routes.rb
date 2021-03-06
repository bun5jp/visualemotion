Visualemotion::Application.routes.draw do

  resources :books
  resources :tops
  resources :abouts
  resources :json

  get 'law' => 'law'

  get 'contact' => 'contact#index'              # 入力画面
  post 'contact/confirm' => 'contact#confirm'   # 確認画面
  post 'contact/thanks' => 'contact#thanks'     # 送信完了画面


  get 'request' => 'request#index'              # 入力画面
  post 'request/confirm' => 'request#confirm'   # 確認画面
  post 'request/thanks' => 'request#thanks'     # 送信完了画面

  get 'top/index' => 'top#index'
  get 'top' => 'top#index'

  get 'tags/:tag', to: 'books#index', as: :tag
  root 'top#index'
  match '/about' , to: 'layouts#about' , via: 'get'


  #get 'json' => 'json#show'


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
