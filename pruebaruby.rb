file = File.open('alumnos.csv', 'r')
p data = file.readlines.map(&:chomp)
file.close

def promedio





puts 'Opciones'
    opcion = 0
    while opcion != 4
      puts "***************************"
      puts '1 = Promedio de cada alumno'
      puts '2 = Inasistencias Totales'
      puts '3 = Alumnos Aprobados'
      puts '4 = Salir'
      puts 'Ingrese su opcion'
     opcion = gets.chomp

      puts case opcion
    when '1'
      promedio
    when '2'
      inasistencias
    when '3'
      aprobados
    else
      exit
      end
     end
