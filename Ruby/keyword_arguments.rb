# son parametros que tienen algunas ventajas como son 
def hola(nombre:"", edad:0) # pueden almacenar valores por defecto un string vacio y cero en este caso
    if edad < 30
        puts "hola joven #{nombre}"
    elsif edad > 30
        puts "hola señor #{nombre}"
    end
end
# son arbitrarios, pueden ser declarados en cualquier orden puesto que son identificados mediante el nombre
hola( edad:35, nombre:"pedro")



# puedes ingresar un número ilimitado de argumentos ingresando un doble operador splat
def imprimir(**hash_de_argumentos) 
    puts hash_de_argumentos
    puts hash_de_argumentos[:color] # de esta manera se accede a cada uno de los elemntos del hash con :al inicio
    puts hash_de_argumentos[:animal] # de la clave entre corchetes
    puts hash_de_argumentos[:numero]
    
end
imprimir(color:"verde", animal:"perro", numero:777) # aqui puedes declarar la cantidad de argumentos que desees