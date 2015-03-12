Rails.application.routes.draw do
  get 'account/edit'
  get 'account/favorites'
  patch 'account/update'

  ActiveAdmin.routes(self)
  resources :movies do
    get 'search', on: :collection
    member do
      post 'favorite'
      delete 'unfavorite'
    end
  end

  resources :movie_ratings

  root 'welcome#index'
  get 'welcome/hello'
  #post 'welcome/hello'
  post 'welcome/hello' => 'welcome#hello', as: 'hello'

end
