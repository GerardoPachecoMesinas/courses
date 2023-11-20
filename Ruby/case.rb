print "Dame tu calificación (1-10):  "
calificación = gets.chomp.to_i


# podemos agragar mas de un caso por cada when como en el siguiente ejemplo
puts case calificación
when 10,9
    "Excelente trabajo"
when 8,7
    "Puedes mejorar"
when 6
    "Apenas fue suficiente"
else
    "Reprobaste"
end