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
  get "home" => "home#index"
  get "product_detail/:id", to: "product_detail#index", as: :product_detail
  get "product_detail" => "product_detail#index"
  get "put_list" => "put_list#index"
  
  get "put_entry", to: "put_entry#new", as: :put_entry_new
  post "put_entry", to: "put_entry#create", as: :put_entry_create
  get "put_entry/:id", to: "put_entry#edit", as: :put_entry_edit

  get "product_manage" => "product_manage#index"
  get "like" => "like#index"
  get "make_account" => "make_account#index"
  get "login" => "login#index"
  get "customer_report" => "customer_report#index"
  get "manage" => "manage#index"
  get "report_completed" => "report_completed#index"
  get "report_list" => "report_list#index"
  get "seller_info" => "seller_info#index"

end
