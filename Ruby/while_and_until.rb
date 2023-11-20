#se ejecutarán las canciones de la lista de reproduccion hasta que se
#terminen las canciones o se detenga manualmante la reproduccion 
#modificando playing a falso

playlist = ["first song", "second song", "third song"]

playing = true
index_song = 0

while ( index_song < playlist.length ) && playing
    puts "reproduciendo #{playlist[index_song]}"
    index_song += 1

    print "quieres continuar con la reproduccion"
    respuesta = gets().chomp.to_i

    if respuesta == 0 then playing = false
    end
    # playing = respuesta != 0  esta seria otra forma de expresarlo
    # de esta manera el valor verdadero o falso de la respuesta se
    # asignará directamente a playing
end

# condicional until  se lee hast que y es el opuesto a while
numero_magico = 20

print "Adivina el número mágico "
numero_usuario = gets().chomp.to_i

until numero_usuario == numero_magico
    puts "Incorrecto, adivina otra vez "
    numero_usuario = gets().chomp.to_i
end

puts "Felicidades, adivinaste"

# condicional do while ejecutará el código al menos una vez
numero = 16

begin
    print "Un número mayor que diez detendra el ciclo "
    numero = gets.chomp.to_i
end while numero <= 10

# condicional do until
numero = 8

begin
    print "Un número menor que diez detendra el ciclo "
    numero = gets.chomp.to_i
end until numero <= 10