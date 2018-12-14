# app/models/todo.rb
class Todo < ApplicationRecord
  # validations
  validates_presence_of :description, :done
end