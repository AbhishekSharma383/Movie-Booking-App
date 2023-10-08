Rails.application.routes.draw do
  root 'movies#index'

  resources :showtimes

  resources :venues do
    member do
      delete 'delete', to: 'venues#destroy'
    end
  end

  resources :movies do
    member do
      delete 'delete', to: 'movies#destroy'
      get :book_show
      get :book_seat
    end
  end

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
