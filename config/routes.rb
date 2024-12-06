Rails.application.routes.draw do
  resources :report_classes
  resources :report_comments
  resources :reports
  resources :questions
  resources :users
  resources :favorites
  resources :product_classes
  resources :products
  resources :purchases
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  # ログイン
  get "login", to: "login#index", as: :login
  post "login", to: "login#create", as: :login_create

  # アカウント作成
  get "make_account", to: "make_account#index", as: :make_account
  post "make_account", to: "make_account#create", as: :make_account_create

  # ホーム、商品詳細
  get "home", to: "home#index", as: :home
  get "product_detail/:id", to: "product_detail#show", as: :product_detail
  post "product_question", to: "product_detail#create", as: :product_question_create
  
  # 購入確認
  get "purchase_confirmation/:id", to: "purchase_confirmation#index", as: :purchase_confirmation
  patch "purchase_confirmation/:id", to: "purchase_confirmation#update", as: :purchase_confirmation_update

  # 出品関連
  get "put_list/:id", to: "put_list#index", as: :put_list
  get "put_entry", to: "put_entry#new", as: :put_entry_new
  post "put_entry", to: "put_entry#create", as: :put_entry_create
  get "put_entry/:product_id", to: "put_entry#edit", as: :put_entry_edit
  patch "put_entry/:product_id", to: "put_entry#update", as: :put_entry_update
  delete "put_entry/:product_id", to: "put_entry#destroy", as: :put_entry_destroy

  # お気に入り
  get "like", to: "like#index", as: :like
  post "like/:product_id", to: "like#create", as: :like_create
  delete "like/:id", to: "like#destroy", as: :like_destroy

  # 通報
  get "customer_report/:product_id", to: "customer_report#new", as: :customer_report_new
  post "customer_report", to: "customer_report#create", as: :customer_report_create
  get "report_completed/:product_id" => "report_completed#index", as: :report_completed

  #---管理者機能 ----
  get "manage" => "manage#index"
  get "report_list", to:"report_list#index", as: :report_list
  get "product_manage", to:"product_manage#index", as: :product_manage
  get "seller_info", to:"seller_info#index", as: :seller_info
  get "report_list" => "report_list#index"
  post "report_list", to: "report_list#create", as: :report_list_create 
  get "seller_info" => "seller_info#index"
  post "seller_info", to: "seller_info#create", as: :seller_info_create

end
