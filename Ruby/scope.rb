class Humano
    def initialize
        privado
    end
    def publico
        puts "soy público"
    end
    private
        def privado
            puts "soy privado"
        end
    protected
        def protegido
            puts "soy protegido"
        end
end

class Tutor < Humano
    def initialize
        privado
    end
end

# class Alien
#     def initialize
        
#     end
# end

humano = Humano.new
tutor = Tutor.new
# tutor.privado
# tutor.protegido
# tutor.is_a?(Humano)

# alien = Alien.new
# alien.publico
# alien.privado
# alien.protegido
# alien.is_a?(Humano)