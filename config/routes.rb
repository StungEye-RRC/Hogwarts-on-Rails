Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  resources :students, only: [:index, :show]
  resources :pages, only: [:show]

  resources :search, only: [:index] do
    collection do
      get 'results'
    end
  end

  get ':permalink', to: 'pages#permalink'
  get 'static_about', to: 'pages#about', as: 'about'

  # RESTful Routing
  # index     GET    /students
  # show      GET    /students/:id
  # new       GET    /students/new
  # create    POST   /students
  # edit      GET    /students/:id/edit
  # update    PUT    /students/:id
  # update    PATCH  /students/:id
  # destroy   DELETE /students/:id

  # THE standard DSL:
  # get 'path', to: 'controller#action'

  # HTTP GET /
  # also runs students controller index action
  root to: 'students#index'
end
