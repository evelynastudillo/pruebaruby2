data = []
file = File.open('alumnos.csv', 'r')
data = file.readlines.map(&:chomp)
file.close

  def promedio(data)
    file = File.new('average.txt', 'w')
    data.each do |line|
    ls = line.split(', ')
       name = ls[0]
       calif = ls[1..5].each.map(&:to_i)
       suma = 0
         calif.each do |num|
           suma += num
  end
   average = suma.to_f / calif.size
   file.puts "El promedio de #{name} es #{average}"
      end
file.close
    end
  promedio(data)

  def inasistencias(data)
    data.each do |line|
    ls = line.split(', ')
       name = ls[0]
       calif = ls[1..5].each.map(&:to_i)
       p leave = calif.count(0)
       if leave >= 1
         puts "El alumno #{name} tiene #{leave} inasistencias"
       end
    end
  end
  inasistencias(data)

 def aprobados(data)
   min_approved = 5
   data.each do |line|
   ls = line.split(', ')
      name = ls[0]
      calif = ls[1..5].each.map(&:to_i)
      suma = 0
        calif.each do |num|
          suma += num
 end
  average = suma.to_f / calif.size
  if average >= min_approved
    puts "#{name} aprueba con nota #{average}"
  end
   end
end
aprobados(data)

puts 'OPCIONES'
    opcion = 0
    while opcion != 4

      puts "____________________________"
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
