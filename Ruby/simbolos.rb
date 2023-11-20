cadena = "Gerardo"
cadena2 = "Gerardo"

simbolo = :Gerardo     #cuando tu utilizas el mismo simbolo no importa que lo nombres de formas distintas ruby no 
simbolo2 = :Gerardo    #lo vuelve a crear solo recicla el mismo simbolo y tendrá el mismo object id

puts cadena.object_id
puts cadena2.object_id

puts simbolo.object_id
puts simbolo2.object_id

# los simbolos se utilizan cuando no necesitas modificar el string, cuando no necesitas los metodos de los strings
# los simbolos son muy utiles como nombres, y para utilizarse como claves en los hashes