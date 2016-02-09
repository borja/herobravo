# encoding: UTF-8

def h48
  {
    id: 48,
    name: 'Ana Killarney',
    personaje: 'hoplita',
    jugador: 'Iris',
    gender: 'female',
    status: 'retirado',
    muerto: true,
    historia: 2,
    nivel: 3,
    cuerpo: 9,
    mente: 3,
    mov: 8,
    profesion: Profesion.new(id: 3, aprendiz: [0, 1]),
    armadura: Armadura.new(id: 2),
    armas: [
      Arma.new(id: 5),
      Arma.new(id: 7)],
    proteccions: [
      Proteccion.new(id: 1, enchants: [84]),
      Proteccion.new(id: 4),
      Proteccion.new(id: 8)],
    skills: [0, 1, 2, 3]
  }
end
