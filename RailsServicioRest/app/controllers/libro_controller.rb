class LibroController < ApplicationController
    def index
      puts "Aqui se supone que debemos devolver todos los libros"
    end
    
    def new
      puts "Aqui se supone que debemos crear el nuevo libro"
    end
    
    def edit
      id = params[:id]
      puts "Aqui debemos editar el libro con id: #{id}"
    end
    
    def show
        id =  params[:id]
        puts "Se supone que debemos devolver el libro con id: #{id}"
        @libro = Libro.new
        @libro.id = id
        @libro.titulo = "Cien años de soledad"
        @libro.autor = "Grabiel Garcia Marquez"
        respond_to{
          |kibi|  #kibi / nombre representativo FORMAT extension etc
            kibi.json{
              render :json => @libro.to_json
            }
            kibi.html{
              render :index
            }
        }
    end
    
    def metodo_prueba
        codigo = params[:codigo]
        @libro = Libro.new
        @libro.id = codigo
        @libro.titulo = "Fray perico y su borrico"
        @libro.autor = "Juan Muñoz Martin"
        render :index
      
    end
  
end
