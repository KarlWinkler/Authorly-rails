Rails.application.routes.draw do
  resources :books do
    resources :chapters, only: [:show, :new, :create]
  end

  root to: 'books#index'
end
