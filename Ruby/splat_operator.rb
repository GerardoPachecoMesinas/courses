# El operador splat es un asterisco que convierte un listado de argumento y los recibe como un arreglo
def hola_gente(mensaje, *personas)
    personas.each {|persona| puts "#{mensaje} #{persona}"}
end
hola_gente("hola", "arturo", "jose", "maria",23)

# Del igual forma puede funcionar a la inversa es decir que puesto como argumento puede recibir una variable que
nombres = ["Uriel", "Coco", ":)", ":("] # contenga un array
hola_gente("hola compañero", *nombres)