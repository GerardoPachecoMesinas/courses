 # solicitud de datos general
 print "Escribe tu nombre  "
 user = gets.chomp

#  ejemplo con if else común
  if user == "Uriel"
      puts "Tutor"
  else
      puts "Visitante"
  end

# ejemplo if then
puts (if user == "Uriel" then "Tutor" else "Visitante" end)

# ejemplo operador ternario
respuesta = user == "Uriel" ? "Tutor" : "Visitante"
puts respuesta