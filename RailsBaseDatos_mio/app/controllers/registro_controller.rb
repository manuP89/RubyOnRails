class RegistroController < ApplicationController
  
  def new
    #registro.all nos devuelve todos los registros de la BBDD
    #al heredad de ActiveRecord, estarán automáticamente importados sus accesors
    #los registros van en un array
    @registros = Registro.all
    if @registros.size > 0
      puts @registros[0].titulo
      puts @registros.first.id
    end
  end
  
  def create
    titulo = params[:titulo]
    comentarios = params[:comentarios]
    parametrosHash = {}
    #la clave corresponde con el nombre de la columna de la base de datos, y el valor corresponde con lo que tenga
    parametrosHash[:titulo] = titulo
    parametrosHash[:comentarios] = comentarios
    
    # @registro = Registro.new
    # @registro.titulo = titulo
    # @registro.comentarios = comentarios
    # @registro.save
    
    
    #le pasamos el Hash
    #el método 'create' puede devolver errores (validaciones). O devuelve el registro creado o devuelve el error.
    @registro = Registro.create(parametrosHash)
    # errors va a contener todos los errores que tenga el objeto.
    if @registro.errors.any? then
      puts "BDERROR: Error"
    end
    @registros = Registro.all
    render :new
  end
  
  def delete
    #id = params[:id].to_i
    titulo = params[:titulo]
    #el metodo delete borra por id. Tambien le podemos pasar un array de ids.
    #Registro.delete id
    #podemos también borrar por otros campos, pero debemos hacer una busqueda primero
    #Esto nos devuelve una lista de coincidencias
    #al no ser clave primaria podría haber varias coincidencias,'where' nos devuelve un array con los resultados de la búsqueda
    #y 'first' nos devuelve el primero de ellos.
    registrosEncontrados = Registro.where(:titulo => titulo)
    registro = registrosEncontrados.first
    registro.destroy
    @registros = Registro.all
    render :new
  end
  
  def update_vista
    #le pasamos el id mediante parametros de la url, para luego buscar el objeto entero a modificar.
    @registro = nil
    id = params[:id].to_i
    @registro = Registro.find id
  end
  
  def update
    #se recogen los parámetros modificados, se meten en un hash, se busca el objeto a modificar y se ejecuta el comando.
    id = params[:id].to_i
    titulo = params[:titulo]
    comentarios = params[:comentarios]
    hashModificar = {}
    hashModificar[:titulo] = titulo
    hashModificar[:comentarios] = comentarios
    registro = Registro.find id
    #update contiene un boolean de si ha ido bien o no
    #registro contiene el ActiveRecord con los posibles errores
    update = registro.update_attributes(hashModificar)
    if update
      puts "Registro actualizado"
      @registros = Registro.all
      render :new
    else
      puts "Error en la actualización"
      render :update_vista
    end
  end
  
  def search_commentary
    comentarios = params[:comentarios]
    puts "HOLAAAAAAA"
    @registrosEncontrados = Registro.where(:comentarios => comentarios)
    puts @registrosEncontrados
    #Registro.where("comentario LIKE %?%", bla)
    render :searchs
  end
  
end
