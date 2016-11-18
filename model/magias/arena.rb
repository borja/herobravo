# Todos los hechizos de tipo arena
class Arena < Magia
  def nivel
    ((id / 6) + 1).to_i
  end

  def elemento
    'arena'
  end
end
