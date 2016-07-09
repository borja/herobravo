# Materiales necesarios para las profesiones
class Material < Util
  def name
    material(id)['name']
  end

  def description
    material(id)['description']
  end

  # returns from heros.materiales, the list of (maybe repeated)
  # ids of the heros with self.id material available
  def disponibles
    total = []
    heros.each do |h|
      next unless h.materiales
      h.materiales.each do |matt|
        total << h.id if matt == id
      end
    end
    total
  end

  def usado_en
    usado = []
    profesions.each do |prof|
      %w(aprendiz artesano maestro).each do |grado|
        prof.send(grado).each do |receta|
          next unless receta['matts']
          next unless receta['matts'].include?(id)
          usado << { prof: id, grado: grado, receta: receta }
        end
      end
    end
    usado
  end
end
