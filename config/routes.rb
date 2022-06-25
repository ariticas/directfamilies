Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  
  
 
 root 'static_pages#home'
  get '/home', to:'static_pages#home'
      get '/about', to:'static_pages#about'
      get '/services', to:'static_pages#services'
      get '/blog', to:'static_pages#blog'
      get '/contact', to:'static_pages#contact'
      
      devise_for :user
      
      resources :leads
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
