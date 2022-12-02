Rails.application.routes.draw do
  root to: 'web/boards#show'

  scope module: :web do
    resource :board, only: :show
    resource :session, only: [:new, :create, :destroy]
    resources :developers, only: [:new, :create]
  end

  namespace :admin do
    resources :users
  end

  namespace :api do
    namespace :v1 do
      resources :tasks, except: [:new, :edit]
    end
  end
end
