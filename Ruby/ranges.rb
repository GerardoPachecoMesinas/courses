# los rangos no son arreglos pero si se pueden utilizar algunos metodos como:
.max
.min
# van entre parentesis y solo se almacena en memoria el primer y el ultimo elemento
# algunos ejemplos serian:
(1..100)
("a".."z")
("ma".."mf")
# con .to_a puedes convertir un rango a un arreglo
puts ("ma".."mf")       # // "ma".."mf"
puts ("ma".."mf").to_a  # // ma, mb, mc, md, me, mf

numeros = (0..20) #esta sintaxis contiene todos los numero entre uno y 10

numeros.step(2).each do |numero,position|  # .step(2) determina la iteracion de 2 en dos
puts numero     # puede ser con do-end o puede ser entre llaves {}.
end
