# Todos los hechizos de tipo sombra
class Sombra < Magia
  def nivel
    ((id / 6) + 1).to_i
  end

  def elemento
    'sombra'
  end
end
