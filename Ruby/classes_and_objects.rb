# las classe son las formas de definir a un grupo de objetos para poder instanciarlos de forma mas rapida y ordenada
class Video
    attr_accessor :minutes, :title   # funciona como una declaracion de atributos existentes dentro de la clase 

    def play
    end

    def pause    # cada uno de estos son metodos contenidos dentro de la clase 
    end

    def stop
    end
end

video1 = Video.new          # asi se instancian objetos de una clase
video1.title = "mascotas"

video2 = Video.new
video2.title = "electrodomésticos" # de esta forma se le asigna un valor al atributo antes declarado dentro de la clase

puts video1.title # asi podemos acceder a cada uno de los atributos de los nuevos objetos 
puts video2.title # .title o .minutesen este caso