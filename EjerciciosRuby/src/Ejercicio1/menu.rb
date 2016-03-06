vOp1 = nil
#vOp2 = 2
vOp3 = 3
vOp1 ||= "a)"
vOp2 ||= "b)"
vOp3 ||= "c)"
TITULO_DE_OPCION = "Opción de"


puts ""
puts "            MENU"
puts "-" *30
puts "#{vOp1} - #{TITULO_DE_OPCION} mostrar"
puts "#{vOp2} - #{TITULO_DE_OPCION} borrar"
puts "#{vOp3} - #{TITULO_DE_OPCION} actualizar"