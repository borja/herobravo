# Todos los hechizos de tipo hielo
class Hielo < Magia
  def nivel
    ((id / 6) + 1).to_i
  end

  def elemento
    'hielo'
  end
end
