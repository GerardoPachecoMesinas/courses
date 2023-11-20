# son parecidos a las funciones en js y pueden o no recibir argumentos

# si tu metodo recibirá argumentos es buena práctica que utilices los parentesis
def square(x)
# la palabra reservada return es utilizada unicamente cuando quieres detener la ejecucion de tu método antes de la ultima linea
    return 0 unless x.is_a? Integer # .is_a? es un método que retorna un booleano si pertenece o no a la clase mencionada
    x * x
end
puts square(3) # tambien al invocar el método es buena practica utilizar los parentesis

# si tu metodo no utilizará argumentos es bueno que omitas los parentesis
def saludar
    puts "Hola mundo"
end
saludar
