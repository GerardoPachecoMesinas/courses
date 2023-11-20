print "inserta un numero "

numero = gets.chomp
numero = numero.to_i
numero = numero %2

if numero == 0
    puts "es par"
else 
    puts "no es par"
end

=begin
1. **
2. !
3. * / %
4. + -
5. < > <= >=     de igual forma, la prioridad sera de izquierda a derecha
6. == <=> !=     cuando dos operadores se encuentren en un mismo nivel de
7. &&            de prioridad
8. ||
9. asignación
10. not
11. or and
=end
