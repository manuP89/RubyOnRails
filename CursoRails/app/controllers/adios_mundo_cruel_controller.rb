class AdiosMundoCruelController < ApplicationController
  
  #pasos para generar manualmente un controller:
  #1. crear el archivo adios_mundo_cruel_controller.rb, dentro de la carpeta controllers
  #2. crear la vista despedir.html.erb dentro de la carpeta adios_mundo_cruel, dentro de views
  
  def despedir
    puts "Esto es una prueba de generar manualmente un controller"
    @despido = "Adios con el corazón..."
  end
  
end