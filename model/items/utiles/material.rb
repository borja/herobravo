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

  # TODO: Tune up this method. Takes too long to load.
  def usado_en
    usado = []
    profesions.each do |prof|
      grados.each do |grado|
        prof[grado].each do |receta|
          p 'receta: '
          p receta
          next unless receta[:matts]
          if receta[:matts].include?(id)
            usado << { prof: prof[:id], grado: grado, receta: receta[:id] }
          end
        end
      end
    end
    usado
  end
end
