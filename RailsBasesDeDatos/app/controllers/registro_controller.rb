class RegistroController < ApplicationController
  #para crear este ejemplo se ejecuto lo siguiente:
  #Se creo el modelo
  #rails generate model registro titulo:string comentarios:string
  #Se actualizo la bd con el nuevo modelo
  #rake db:migrate
  
  #Se creo el controlador
  #rails generate controller registros new
  #aunque luego se dio de alta el create en el route.rb
  #Para ver la bd
  #rails dbconsole
  def new
    @registro = Registro.new#obligatorio para que no de error la vista
    @registros = Registro.all#Nos devuelve todos los registros de la bd
    #@registros es un array de Registro al heredar de ActiveRecord
    #obtenemos automaticamente sus getter y setter
    #Además, aunque no le hayamos dicho de que se quiere crear un id
    #automaticamente te lo crea
    #puts @registros[0].titulo
    #puts @registros[0].id
  end

  def create
    #Registro.create necesita un hash con todos atributos del objeto
    #registro Ej: '{"titulo"=>"Nota3", "comentarios"=>"Repasar ruby"}'
    #devuelve un objeto registro
    @registro = Registro.create(registro_params)
    @registros = Registro.all
    if @registro == nil
      @registro = Registro.new
    end
    puts @registro
    render :new
  end
  
  def registro_params
    #Con require nos aseguramos que el parametro especificado esta presente
    #si no lo estuviera, lanzaria una excepcion
    #Devolvera un hash con solo los atributos que le digamos
    retorno = params.require(:registro).permit(:titulo,:comentarios)
    puts "retorno: #{retorno}"
    retorno
  end
  
  def borrar
    titulo = params[:titulo]
    puts "procedemos a borrar el registro con titulo: #{titulo}"
    #procedemos a buscar el registro con un titulo dado
    #where devuelve un array con todas las coincidencias
    #en este caso como solo hay uno, pedimos el primer elemento del array
    registrosEncontrados = Registro.where(:titulo=>titulo)
    puts"Numero de registros encontrados: #{registrosEncontrados.size}"
    puts "registro encontrado: #{registrosEncontrados[0].titulo}"
    registro = registrosEncontrados.first
    registro.destroy
    #Volvemosa mandar un registro vacio y los registros a mostrar
    @registro = Registro.new
    @registros = Registro.all
    puts "Saliendo de borrar el registro"
    render :new
  end
  
  def modificar_vista
    titulo = params[:titulo]
    registrosEncontrados = Registro.where(:titulo=>titulo)
    @registro = registrosEncontrados.first
  end
  
  #Se modifica por titulo
  def modificar
    tituloBorrar = params[:tituloBorrar]
    puts "procedemos a modificar el registro con titulo original: #{tituloBorrar}"
    registrosEncontrados = Registro.where(:titulo=>tituloBorrar)
    registro = registrosEncontrados.first
    registro.update_attributes(registro_params)
    puts "Registro actualizado"
    #Volvemosa mandar un registro vacio y los registros a mostrar
    @registro = Registro.new
    @registros = Registro.all
    render :new
  end
  
  ####################
  
  #Esto se hizo luego para ver como recoger los parametros y crear un 
  #nuevo registro con html normal
  #Se dio de alta estas rutas en el route.rb
  def new_classic
    #@registros = Registro.all
  end
  
  def create_classic
    parametros = {}
    parametros[:titulo] = params[:titulo]
    parametros[:comentarios] = params[:comentarios]
    
    @registro = Registro.create(parametros)
    #@registros = Registro.all
    render :new_classic
  end
  
  #borramos por id
  def borrar_classic
    id = params[:id]
    puts "procedemos a borrar el registro con id: #{id}"
    #procedemos a buscar el registro con un titulo dado
        
    #where devuelve un array con todas las coincidencias
    #en este caso como solo hay uno, pedimos el primer elemento del array
    #registrosEncontrados = Registro.where(:id=>id)
    #puts"Numero de registros encontrados: #{registrosEncontrados.size}"
    #puts "registro encontrado: #{registrosEncontrados[0].titulo}"
    #registro = registrosEncontrados.first
    
    #Buscamos por id
    registro = Registro.find id
    registro.destroy
    #tambien vale
    #registro.delete id
    
    #Volvemosa los registros a mostrar
    #@registros = Registro.all
    puts "Saliendo de borrar el registro"
    render :new_classic
  end
  
  def modificar_vista_classic
    id = params[:id]
    @registro = Registro.find id
  end
  
  #Se modifica por id
  def modificar_classic
    id = params[:id]
    
    parametros = {}
    parametros[:titulo] = params[:titulo]
    parametros[:comentarios] = params[:comentarios]
    puts "procedemos a modificar el registro con id: #{id}"
    @registro = Registro.find id
    update = @registro.update_attributes(parametros)
    puts "valor de update: #{update}"
    if update
      puts "Registro actualizado"
      render :new_classic
    else
      puts "Registro no actualizado"
      render :modificar_vista_classic
    end
  end
  
  def buscar_por_titulo_classic
    titulo = params[:titulo]
    #Ambas maneras equivalentes
    #@registrosEncontrados = Registro.where(:titulo=>titulo)
    #@registrosEncontrados = Registro.where("titulo = ?", titulo)
    #Tambien podemos por patron mediante sql
    @registrosEncontrados = Registro.where("titulo LIKE ?","%#{titulo}%")
    render "busquedas_classic"
  end
  
  
end
