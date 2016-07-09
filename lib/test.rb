# Dictionary for the character test (14 questions)
def preguntas
  load_yaml('personaje/test')
end

# Recoge los valores de las respuestas y los agrupa
def collect_values(hashes) # An array of hashes should be provided
  {}.tap { |r| hashes.each { |h| h.each { |k, v| (r[k] ||= []) << v } } }
end

# After question num 14, this will turn on
def respuestas(codigo) # Code from URL
  if codigo.to_s.length == preguntas.count # Check size (14)
    preguntas.map do |p|
      r = codigo[p['id']].to_i # respuesta segun el codigo
      p['respuestas'][r].last  # valores de puntuacion segun codigo
    end                        # devuelve {"enano"=>2, "elfo"=>1} 14 veces
  else
    redirect :error # If not 14, then raise error
  end
end

# /views/test/solucion.erb
def quiensoy(codigo)
  valores = collect_values(respuestas(codigo)) # agrupa por clave
  s = valores.each { |k, v| valores[k] = v.inject(:+) } # Suma los valores
  s.sort_by { |_key, value| -value }.to_h # Ordena por relevancia
end
