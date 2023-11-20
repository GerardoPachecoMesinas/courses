# ejemplo de promedio de claificaciones
calificaciones = %w[10 7 8 9 5 8 10]

suma = 0

# .each_with_index es un iterador de arrays que devuelve dos valores (calificacion y posicion en este caso)
# .each solo devuelve el valor de cada iteracion (calificacion en este caso)
calificaciones.each_with_index do |calificacion,posicion|
    puts "en la posicion #{posicion} tenemos: #{calificacion}"
    suma += calificacion.to_i  # += es la forma de adicionar el valor de un numero 
end

puts "\n"
puts "El promedio de tu calificacion es #{suma.to_f / calificaciones.length}"