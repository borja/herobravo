# Todos los hechizos de plegaria
class Plegaria < Magia
  def nivel
    ((id / 8) + 1).to_i
  end

  def elemento
    'plegaria'
  end
end

# Todas las plegarias oscuras
class Execracion < Plegaria
  def elemento
    'execración'
  end
end
