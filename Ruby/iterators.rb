# times, upto, downto

# sintaxis times comienza desde cero
10.times do |i|
    puts i + 1
end

# sintaxis upto de forma acendente determinas hasta donde iterar
1.upto(10) do |i|
    puts i
end

# sintaxis downto de forma decendente determinas hasta donde iterar
10.downto(1) do |i|
    puts i
end

# al igual que el resto de las condicionales y cilos, debes de
# seleccionar el que haga que tu codigo sea mas legible