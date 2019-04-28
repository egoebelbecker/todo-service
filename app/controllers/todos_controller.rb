# frozen_string_literal: true

# app/controllers/todos_controller.rb
class TodosController < ApplicationController
  before_action :set_todo, only: %i[show update destroy]

  # GET /todos
  def index
    @todos = Todo.all
    logger.debug "Returning all todos: " + @todos.inspect
    json_response(@todos)
  end

  # POST /todos
  def create
    @todo = Todo.create!(todo_params)
    json_response(@todo, :created)
  end

  # GET /todos/:id
  def show
    console
    logger.debug "Returning a todo: " + @todo.inspect
    json_response(@todo)
  end

  # PUT /todos/:id
  def update
    @todo.update(todo_params)
    head :no_content
  end

  # DELETE /todos/:id
  def destroy
    @todo.destry
    head :no_content
  end

  private

  def todo_params
    # whitelist params
    params.permit(:description, :done)
  end

  def set_todo
    @todo = Todo.find(params[:id])
  end
end
