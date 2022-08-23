Rails.application.routes.draw do
  get 'home/index'

  #get '/contacts/new' => 'contacts'

  resource :contacts, only: [:new, :create], path_names: { :new => '' }
  resources :articles

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
