class StudentsController < ApplicationController
  # The methods in a controller tend to be called
  # actions.

  # The index action
  def index
    @students = Student.all
  end
  # Automagically renders the
  # app/views/students/index.html.erb
  # it will also give the view access to it's
  # instance variables.

  # The show action
  def show
    @student = Student.find(params[:id])
  end
  # Automagically renders the
  # app/views/students/show.html.erb
end
