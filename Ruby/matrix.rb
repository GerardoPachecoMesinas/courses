require 'matriz'

matriz = Matrix[[1,2,3],[4,5,6],[7,8,9]]

# [
#   1 2 3
#   4 5 6
#   7 8 9
# ]

puts matriz
# [1,2,3],[4,5,6],[7,8,9]

# imprimir todos los elemntos de una matriz
matriz.each do |i|
    puts i
end  # 1 2 3 4 5 6 7 8 9

# imprimir la diagonal de una matrix
matriz.each(:diagonal) do |i|
    puts i
end  # 1 5 9

# imprimir elementos arriba de la diagonal
matriz.each(:strict_upper) do |i|
    puts i
end  # 2 3 6

# imprimir elementos abajo de la diagonal
matriz.each(:strict_lower) do |i|
    puts i
end  # 4 7 8

puts matriz.diagonal?    # false

# la matriz diagonal es aquella que todos los valores fuera de la
# diagonal son ceros solo asi devolvera true 
# matriz = Matrix[
    # [1,0,0],
    # [0,5,0],
    # [0,0,9]
#                 ] ejemplo de matriz true