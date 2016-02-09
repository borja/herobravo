# encoding: UTF-8
def h55
  {
    id: 55,
    name: "Häxa Yaga",
    personaje: 'nigromante',
    jugador: 'Iris',
    gender: 'female',
    ciudad: 'Zindor',
    nivel: 1,
    cuerpo: 5,
    mente: 5,
    mov: 7,
    armadura: Armadura.new(id: 2),
    armas: [
      Arma.new(id: 1),
      Arma.new(id: 3, ranuras: 1)
    ]
  }
end
