# herencia hace referencia a los atributos y metodos que pueden ser heredados de una clase padre a una clase hijo
# las clases hijo son generalmente especializaciones de la clase padre, heredando caracteristicas y añadiendo otras mas especificas
# las clases no pueden tener multi herencia como en otros lenguajes, es decir solo pueden tener una clase padre

# todas las clases en rubi heredan tacitamente de la clase Object
class Object
    def i_have_superpowers #aqui estamos agregando un metodo a la clase Object del lenguaje ruby, por lo que este 
        puts "este metodo esta en todos lados" # metodo se encontrará en todos los objetos en ruby numero, arrays
        end                                    # clases, hashes, etc.
end
puts 1.i_have_superpowers
puts [].i_have_superpowers
puts {}.i_have_superpowers
puts "".i_have_superpowers

class Video # aqui estamos creando la clase padre 
    attr_accessor :title        # aqui se estan definiendo los atributos generales que contendra cada instancia de 
    attr_accessor :duration     # la clase video
    attr_accessor :description

    def embed_video_code        # aqui comenzamos con cada uno de los metodos que contendra cada instancia
        "<video></video>"
    end
    def setup(title)
        @title = title
    end
end
# a continuacion se crearan dos clases que heredan de video todos sus metodos y atributos

class FacebookVideo < Video     # con el operados "<" asignamos como padre la clase a la derecha del operador
    attr_accessor :facebook_id  # aqui estamos añadiendo un atributo especifico de la clase FacebooVideo
end
fbk = FacebookVideo.new    #aqui estamos instanciando un nuevo objeto de la clase FacebookVideo
fbk.title = "primer video de facebook" # aqui estamos modificando el atributo title heredado del padre Video
fbk.facebook_id = "67by7y8yubndh"     # aqui estamos modificando el atributo facebook_id creado en la clase hijo
puts fbk.title         # aqui estamos imprimiendo los valores asignados al atributo heredado de la clase padre
puts fbk.facebook_id   # aqui estamos imprimiendo los valores asignados al atributo creado en la clase hijo

class YouTubeVideo < Video
    attr_accessor :youtube_id

    def embed_video_code        # de igual forma puede sobreescribirse un metodo declarado en la clase padre nombrando
        "<iframe />"            # el metodo en la clase hijo de la misma forma que dicho metodo en la clase padre 
    end
    def setup(title)            # aqui no estamos sobreescribiendo, estamos superponiendo otra nueva funcionalidad
        super                   # a el metodo previamente definido en la clase padre
        # YouTubeAPI.init()
        puts "Algo extra"
    end
end
ytb = YouTubeVideo.new         # estamos creando una nueva instancia de YouTubeVideo
ytb.setup("herencia ruby")     # estamos modificando su metodo "superpuesto" y asignandole a la vez un valor
puts ytb.title                 # estamos imprimiendo el valor asignado en la linea anterior
