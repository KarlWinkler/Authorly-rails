Rails.application.routes.draw do
  devise_for :authors
  resources :books, only: [:index, :show] do
    resources :chapters, only: [:index, :show]
  end

  resource :authors, only: [:show] do
    resources :books, only: [:index, :new, :create, :show, :edit, :update], controller: 'authors/books'
  end

  resource :welcome, only: [:show]

  root to: 'welcome#show'
end
