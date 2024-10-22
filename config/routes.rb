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
  get "product_detail" => "product_detail#index"
  get "product_manage" => "product_manage#index"
  get "like" => "like#index"
  get "make_account" => "make_account#index"
end
