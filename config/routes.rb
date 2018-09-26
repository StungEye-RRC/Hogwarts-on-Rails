Rails.application.routes.draw do
  resources :students, only: [:index, :show]

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
