Rails.application.routes.draw do
  # HTTP GET /students
  # runs students controller index action
  get 'students', to: 'students#index'

  # HTTP GET /
  # also runs students controller index action
  root to: 'students#index'

  # HTTP GET /students/show
  # runs students controller show action
  get 'students/show'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
