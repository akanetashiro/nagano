Rails.application.routes.draw do
  
  namespace :public do
    get 'orders/new'
    get 'orders/show'
    get 'orders/edit'
  end
  namespace :admin do
    get 'order_items/show'
    get 'order_items/index'
  end
  namespace :public do
    get 'order_items/show'
    get 'order_items/index'
  end
  namespace :public do
    get 'items/show'
    get 'items/index'
  end
  scope module: :public do
  root to: "homes#top"
  end 

  namespace :admin do
    resources :customers
    resources :genres
    resources :items
    # get 'customers/show'
    # get 'customers/index'
    # get 'customers/edit'
  end
  
  
  namespace :public do
    resources :customers
    get 'homes/about'
    # get 'customers/show'
    # get 'customers/edit'
  end
  
    # get 'genres/edit'
    # get 'genres/index'
    # get 'genres/new'
  
    # get 'items/edit'
    # get 'items/index'
    # get 'items/new'
    # get 'items/show'
  
  devise_for :customers,skip: [:passwords],controllers: {
  registrations: "public/registrations",
  sessions: 'public/sessions'
  }

  devise_for :admin,skip:[:registrations, :passwords],controllers: {
  sessions: "admin/sessions"
  }
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
