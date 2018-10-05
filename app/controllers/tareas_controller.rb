class TareasController < ApplicationController
  before_action :set_tarea, except: [:index,:new,:create] # collbacks
  def index
  	@tareas = Tarea.all
  	# Select * from tareas 
  end
  def new
  	@tarea = Tarea.new
  	# formulario de entrada
  end
  def create
  	@tarea = Tarea.new(tareas_params) #(titulo: params[:tarea][:titulo], descripcion: params[:tarea][:descripcion])
    if @tarea.save
       redirect_to @tarea # ir a misma variable (controller: "tareas", action: "show")
    else
       render :new
    end
    # ingresar datos en la base de datos insert into()
  end
  def show
    # busqueda por id en base de datos    
  end
  def edit
    # edicion y cambio de datos
  end
  def update
    if @tarea.update(tareas_params) #(titulo: params[:tarea][:titulo], descripcion: params[:tarea][:descripcion])
       redirect_to @tarea # (controller: "tareas", action: "show")
    else
       render :show
      # actualizar campos de base de datos Update()
    end   
  end
  def destroy
    @tarea.destroy
    redirect_to tareas_path
    # borrar datos por id (controller: "tareas", action: "show")
  end
  private
    def set_tarea
      @tarea = Tarea.find(params[:id])
    end
    def tareas_params
      params.require(:tarea).permit(:titulo,:descripcion)
    end
end
