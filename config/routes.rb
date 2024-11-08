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

  get "home", to: "home#index", as: :home
  get "product_detail/:id", to: "product_detail#show", as: :product_detail
  post "product_question", to: "product_detail#create", as: :product_question_create
  
  get "put_list/:id", to: "put_list#index", as: :put_list

  get "put_entry" => "put_entry#index"


  get "purchase_confirmation/:id", to: "purchase_confirmation#index", as: :purchase_confirmation
  patch "purchase_confirmation/:id", to: "purchase_confirmation#update", as: :purchase_confirmation_update
  
  
  get "put_entry", to: "put_entry#new", as: :put_entry_new
  post "put_entry", to: "put_entry#create", as: :put_entry_create
  get "put_entry/:product_id", to: "put_entry#edit", as: :put_entry_edit
  patch "put_entry/:product_id", to: "put_entry#update", as: :put_entry_update
  delete "put_entry/:product_id", to: "put_entry#destroy", as: :put_entry_destroy

  get "product_manage" => "product_manage#index"
  get "like" => "like#index"

  get "make_account", to: "make_account#index", as: :make_account
  post "make_account", to: "make_account#create", as: :make_account_create

  get "login", to: "login#index", as: :login
  post "login", to: "login#create", as: :login_create
  get "customer_report", to: "customer_report#index", as: :customer_report
  get "manage" => "manage#index"
  get "report_completed" => "report_completed#index"
  get "report_list" => "report_list#index"
  get "seller_info" => "seller_info#index"

end
