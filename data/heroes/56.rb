# encoding: UTF-8
def h56
  {
    id: 56,
    name: 'Kant Borriquero',
    personaje: 'hoplita',
    jugador: 'Borja',
    ciudad: 'Zindor',
    nivel: 1,
    cuerpo: 8,
    mente: 2,
    mov: 7,
    skills: [0],
    armadura: Armadura.new(id: 2),
    armas: [Arma.new(id: 2)],
    proteccions: [
      Proteccion.new(id: 2)]
  }
end
