# Todos los hechizos de tipo elemental
class Elemental < Magia
  def nivel
    (id / 24).to_i + 1
  end

  def elemento
    %w(fuego aire tierra agua)[id / 6 % 4]
  end
end
