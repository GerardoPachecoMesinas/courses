 print "escribe el primer numero "
 numero_uno = gets.chomp.to_i
 print "escribe el segundo numero "
 numero_dos = gets.chomp.to_i

 puts "Primer numero #{numero_uno} y Segundo numero #{numero_dos}"

 if numero_uno > numero_dos && numero_dos < numero_uno
     puts "#{numero_uno} es mayor que #{numero_dos}"
 elsif numero_uno < numero_dos && numero_dos > numero_uno
     puts "#{numero_uno} es menor que #{numero_dos}" 
 else 
     puts "#{numero_dos} es igual que #{numero_uno}"
 end

# el condicional unless solo ejecutará el codigo si la condicion es
# falsa y solo se utiliza por convencion cualdo existirá un solo
# condicional

print "inserta tu edad "
edad = gets.chomp.to_i
puts "menor de edad " unless edad >= 18

unless edad >= 18 puts "menor de edad"