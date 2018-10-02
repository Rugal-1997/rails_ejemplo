class TareasController < ApplicationController
  def index
  	@tareas = Tarea.all
  	# Select * from tareas 
  end
  def new
  	@tarea = Tarea.new
  	# formulario de entrada
  end
  def create
  	
  end
end
