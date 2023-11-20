# inicializar arreglo vacio
arreglo = []

# inicializar arreglo con valores contenidos
arreglo_uno = [3, "perro", true]

# en este caso con %w podemos omitir las comas pero
# todo lo guardado en este array sera considerado string
arreglo_dos = %w[40 perro false]

# inicializar arreglo con el contructor de clase
arreglo_tres = Array.new(5)

# podemos agregar valores directamente en culquier indice del arreglo
arreglo[3] = ":)"
arreglo << "hola"

puts arreglo
puts "\n"
puts arreglo_uno
puts "\n"
puts arreglo_dos
puts "\n"
puts arreglo_tres
puts "\n"

#en este ejemplo podemos ver vario metodos que se pueden utilizar con arrays
calificaciones = [10, 7, 8, 9, 5, 8, 6]
puts calificaciones * ","
#puts calificaciones.join("-")
puts "\n"
puts calificaciones.sort.reverse
puts "\n"
puts calificaciones.sort
puts "\n"
puts calificaciones.include?(4)
puts "\n"
puts calificaciones.first
puts "\n"
puts calificaciones.last
puts "\n"
puts calificaciones.uniq
puts "\n"
puts calificaciones.sample