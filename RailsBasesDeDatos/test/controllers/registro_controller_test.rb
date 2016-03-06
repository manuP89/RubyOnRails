require 'test_helper'

#primero migrar el esquema a la bd de test
#rake db:migrate RAILS_ENV=test

#para ejecutar
#rake test test/controllers/registro_controller_test.rb

#para ejecutar la bd de text
#rails dbconsole test

class RegistroControllerTest < ActionController::TestCase
  
  setup do
    #la variable que quiero mandar al controlador
    #@registro = registros(:one)
    @registro = {titulo: "Titulo prueba", comentarios: "blablabal"}
  end

  test "comprueba la url new classic" do
    get :new_classic #simulamos la llamada al get al metodo new, realmente llamamos al new del controlador
    assert_response :success #validamos que la llamada es correcto
  end

  test "comprueba la url new" do
    get :new #simulamos la llamada al get al metodo new, realmente llamamos al new del controlador
    assert_response :success #validamos que la llamada es correcto
  end
  
  test "comprueba la url create" do
    #comprobamos que el numero de registros sea difente antes y despues
    #de ejecutar el contenido 
    assert_difference 'Registro.count' do 
      get :create, registro: {titulo: @registro[:titulo],comentarios: @registro[:comentarios]} 
      puts Registro.all
    end

  end
  

end
