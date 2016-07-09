# Todos los hechizos de tipo sangre
class Sangre < Magia
  def nivel
    ((id / 6) + 1).to_i
  end

  def elemento
    'sangre'
  end
end
