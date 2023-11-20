# los hashes se comportan como objetos en java script

# las claves pueden ser cualquier objeto como en el siguiente hash
persona = { "nombre" => "Gerardo", "edad" => 34, 20 => "veinte", [] => "arreglo", :saludo => "hola"}

# esta seria la forma de iterar un hash con each
persona.each do |clave,valor|
    puts "en #{clave} esta guardado #{valor}"
end
puts "\n"

# para acceder a cada valor es con su respectiva clave
puts persona["nombre"]  # Gerardo
puts "\n"
puts persona["edad"]    # 34
puts "\n"
puts persona[20]        # veinte
puts "\n"
puts persona[[]]        # arreglo
puts "\n"
puts persona[:saludo]   # hola
puts "\n"

# para modificar o agregar o modificar una clave y su respectivo valor
persona["cursos"] = 10
puts "\n"
# el metodo default determina un valor cuando accedas a una clave inexistente
persona.default = ":)"
puts "\n"

puts persona[5]         # :)
puts "\n"
puts persona # "nombre"=>"Gerardo", "edad"=>34, 20=>"veinte", []=>"arreglo", "cursos=>10"
puts "\n"
puts persona.length # devuelve el tamaño del arreglo
puts "\n"
puts persona.size # devuelve el tamaño del arreglo
puts "\n"
puts persona.has_key?([]) # devuelve un booleano si existe o no la clave en el parametro
puts "\n"
puts persona.has_value?("arreglo") # devuelve un booleano si existe o no el valor en el parametro
puts "\n"
puts persona.keys # devuelve un arreglo con solo las claves del hash
puts "\n"
puts persona.values # devuelve un arreglo con solo los valores del hash
persona.delete("cursos") # ayuda a borrar un solo elemento del hash
puts "\n"
puts persona
puts "\n"
puts persona.empty? # devuelve un booleano si el hash se encuentra vacio o no
puts "\n"
puts persona.key(34) # devuelve la clave del valor que pases por parametro
puts "\n"
puts persona.invert # switchea las claves por los valores y viceversa
puts "\n"
# se crea otro hash para poder hacer merge en el siguiente atributo
coche = {"marca" => "toyota", "modelo" => "prius", "año" => 2023}
puts persona.merge(coche) # Fusiona dos hashes
puts persona.clear # deja completamente vacio un hash