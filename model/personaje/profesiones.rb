# encoding: UTF-8

def grados
  %w(aprendiz artesano maestro)
end

def profes
  %w(alquimia inscripción taxidermia táctica
     encantamiento orfebrería carpintería
     política cetrería)
end

def load_recetas(id, prof)
  {
    id:       id,
    name:     prof,
    aprendiz: load_yaml("profesiones/#{prof}/aprendiz"),
    artesano: load_yaml("profesiones/#{prof}/artesano"),
    maestro:  load_yaml("profesiones/#{prof}/maestro")
  }
end

def profesions
  profesions = []
  profes.each_with_index do |prof, i|
    profesions << Profesion.new(load_recetas(i, prof))
  end
  profesions
end

def prof_impeds
  load_yaml('profesiones/imped')
end

def profesion(id) # TODO : This is not working
  profesions[id]
end
