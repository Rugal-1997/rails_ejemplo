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
  	@tarea = Tarea.new(titulo: params[:tarea][:titulo], descripcion: params[:tarea][:descripcion])
    if @tarea.save

    else
      render :new
    end
    # ingresar datos en la base de datos insert into()
  end
  def show
    @tarea = Tarea.find(params[:id])
    # busqueda por id en base de datos    
  end
  def edit
    
  end
  def destroy

  end
end
