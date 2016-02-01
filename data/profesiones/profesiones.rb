# encoding: UTF-8

def grados ; %w(aprendiz artesano maestro) end

def profes
  %w(alquimia carpintería encantamiento inscripción
     orfebrería táctica taxidermia)
end

def profesions
  [
    { id:        0,
      name:      'alquimia',
      aprendiz:  alquimia_aprendizajes,
      artesano:  alquimia_artesanías,
      maestro:   alquimia_maestrías
    },
    { id:        1,
      name:      'inscripción',
      aprendiz:  inscripción_aprendizajes,
      artesano:  inscripción_artesanías,
      maestro:   inscripción_maestrías
    },
    { id:        2,
      name:      'taxidermia',
      aprendiz:  taxidermia_aprendizajes,
      artesano:  taxidermia_artesanías,
      maestro:   taxidermia_maestrías
    },
    { id:        3,
      name:      'táctica',
      aprendiz:  táctica_aprendizajes,
      artesano:  táctica_artesanías,
      maestro:   táctica_maestrías
    },
    { id:        4,
      name:      'encantamiento',
      aprendiz:  encantamiento_aprendizajes,
      artesano:  encantamiento_artesanías,
      maestro:   encantamiento_maestrías
    },
    { id:        5,
      name:      'orfebrería',
      aprendiz:  orfebrería_aprendizajes,
      artesano:  orfebrería_artesanías,
      maestro:   orfebrería_maestrías
    },
    { id:        6,
      name:      'carpintería',
      aprendiz:  carpintería_aprendizajes,
      artesano:  carpintería_artesanías,
      maestro:   carpintería_maestrías
    }
  ]
end

def profesion(id)
  profesions[id]
end
