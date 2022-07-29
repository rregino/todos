class TodosController < ApplicationController
  before_action :authenticate

  def index
    @todos = Todo.where(:email => get_email)
  end

  def new
    @todo = Todo.new
  end

  def create
    Todo.create(todo_params.merge({ :email => get_email }))
    redirect_to root_path
  end

  private 
  
  def todo_params
    params.require(:todo).permit(:title)
  end

end