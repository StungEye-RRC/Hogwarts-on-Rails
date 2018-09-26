Rails.application.routes.draw do
  # HTTP GET /students
  # runs students controller index action
  get 'students', to: 'students#index'

  # HTTP GET /
  # also runs students controller index action
  root to: 'students#index'

  # HTTP GET /students/:id
  # runs students controller show action
  get 'students/:id', to: 'students#show', id: /\d+/

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
