vOp1 = 1
vOp2 = 2
vOp3 = 3
vOp1 ||= "a)"
vOp2 ||= "b)"
vOp3 ||= "c)"
TITULO_DE_OPCION = "Opción de"

def menu(*valores)
  puts ""
  puts "            MENU"
  puts "-" *30
  puts "#{valores[0]} - #{valores[3]} mostrar"
  puts "#{valores[1]} - #{valores[3]} borrar"
  puts "#{valores[2]} - #{valores[3]} actualizar"
end

menu(vOp1, vOp2, vOp3, TITULO_DE_OPCION)
