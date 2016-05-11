# encoding: UTF-8

def grados
  %w(aprendiz artesano maestro)
end

def profes
  %w(alquimia inscripción taxidermia táctica
  encantamiento orfebrería carpintería )
end

def profesions
  profesions = []
  profes.each_with_index do |p, i|
    recetas = {
      id:       i,
      name:     p,
      aprendiz: load_yaml("profesiones/#{p}/aprendiz"),
      artesano: load_yaml("profesiones/#{p}/artesano"),
      maestro:  load_yaml("profesiones/#{p}/maestro")
    }
    profesions << Profesion.new(recetas)
  end
  profesions
end

def profesion(id)
  profesions[id]
end
