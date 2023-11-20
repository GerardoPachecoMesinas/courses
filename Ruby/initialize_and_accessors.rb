# el motodo initialize se ejecutará cada que se instancie un nuevo objeto y
# se utiliza para inicializar (de ahi su nombre) valores que el objeto tendrá
class Video
    attr_accessor :minutes, :title

    def initialize(title) # al asignar parametros al metodo initialize debes de argumentarlos al instanciar un nuevo objeto
        self.title = title  # self funciona como .this en js
    end

    def play
    end

    def pause
    end

    def stop
    end
end

video1 = Video.new("nombre del video")
# en esta linea, estamos instanciando video1 e initialize pide el title del nuevo objeto

puts video1.title



############################################### accessors ################################################
# aqui existen variables de instancia, las cuales se definen con un @ antes del nombre de la variable
# estas variables pueden almacenar distintos valores en cada objeto ya que son instaciadas como atributos del mismo
# no pueden ser leidas ni modificadas fuera de la clase donde fueron declaradas
# se puede acceder a ellas desde cualquier parte dentro de la misma clase donde se declaran aunque sea en otro metodo

class Tutor
    def initialize(name)
        @nombre = name
    end
# para poder acceder a esa variable de instancia desde fuera de la clase y poder modificarla o leerla se necesitan
    def nombre # un metodo getter que en ruby lleva el mismo nombre de la variable y permite la lectura de la misma 
        @nombre
    end
    def nombre=(nombre) # un metodo setter en ruby lleva el nombre de la variable mas un "=" al final,
        @nombre = nombre # y el parametro a recibir, y permite la modificacion de la variable
    end
end

uriel = Tutor.new("uriel") #aqui estamos instanciando un nuevo objeto
puts uriel.nombre      #accedemos a la variable instanciada mediante el metodo get
uriel.nombre= "pedro"      #modificamos esa variable instanciada mediante el metodo set
puts uriel.nombre      #y por ultimo volvemos a acceder para imprimir el nuevo valor

jose = Tutor.new("jose")   #aqui estamos instanciando un nuevo objeto
puts jose.nombre       #accedemos a la variable instanciada mediante el metodo get
jose.nombre= "paco"    #modificamos esa variable instanciada mediante el metodo set
puts jose.nombre       #y por ultimo volvemos a acceder para imprimir el nuevo valor

############################################### attr_accessor ################################################
# esta es la manera mas simple de asignar metodo accesores en ruby y sustituyen a los metodos get y set
class Tutor
    attr_accessor :nombre # de esta forma estamos definiendo ambos metodos get y set en una sola linea 
    attr_reader :nombre   # de esta forma estamos definiendo solo el metodo get 
    attr_writer :nombre   # de esta forma estamos definiendo solo el metodo set
    def initialize(name)
        @nombre = name
    end
end