require 'test_helper'

#primero migrar el esquema a la bd de test
#rake db:migrate RAILS_ENV=test

#para ejecutar
#rake test test/models/registro_test.rb

#para ejecutar la bd de text
#rails dbconsole test

class RegistroTest < ActiveSupport::TestCase
 
  test "guardar con validaciones" do
    @registro = registros(:registro_bueno)
    @registro.save
    #comprobamos que no sea true, es decir que sea false
    assert_not @registro.errors.any?,'registro posee errores al guardar!'
    @registro = registros(:comentario_malo)
    @registro.save
    assert @registro.errors.any?, 'El registro no ha producido errores y debería!'
    @registro = registros(:titulo_vacio)
    @registro.save
    assert @registro.errors.any?, 'El registro no ha producido errores y debería!'
  end
end
