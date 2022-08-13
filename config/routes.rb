Rails.application.routes.draw do
  resources :books do
    resources :chapters, only: [:show, :new, :create]
  end

  resource :welcome, only: [:show]

  root to: 'welcome#show'
end
