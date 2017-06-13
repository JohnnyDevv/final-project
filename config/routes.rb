Rails.application.routes.draw do

  resources :orders
  resources :carts
  resources :line_items
  devise_for :users
  resources :products, :except => [:show] do
    get :who_bought, on: :member
  end  
  #get '/product_upload' => 'products#new'
  resources :categories, except: [:index]
  resources :articles

  get 'search_products', to: "products#search"
  get 'search_articles', to: "articles#search"
  get 'ask_bot', to: 'application#ask_bot'
  get 'bot', to: 'support#index'
  get 'back_office', to: 'back_office#index'
  
  root 'welcome#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
 