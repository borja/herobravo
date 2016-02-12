def sombras
  [
    Sombra.new(
      id:       0,
      name:     'flechas de la noche',
      efecto:   '3 dados de ataque de sombras, que se pueden repartir entre objetivos visibles',
      diablura: "Cada punto de daño causado recupera 1 PM",
      potencia: '+1 dado de ataque de sombras'),
    Sombra.new(
      id:       1,
      name:     'manto de oscuridad',
      efecto:   'Nadie puede atacar en la sala.',
      diablura: '+1 potencia a los hechizos de sombras en la sala.',
      potencia: '+1 objetivo es inmune a este efecto.'),
    Sombra.new(
      id:       2,
      name:     'cadena de tinieblas',
      efecto:   "Aturde al objetivo. Además el objetivo pierde la plusmitad de su movimiento.",
      diablura: "Si el objetivo es un demonio/no-muerto, lo controlará en su lugar, mientras dure el efecto.",
      potencia: '-1 movimiento del objetivo'),
    Sombra.new(
      id:       3,
      name:     'pesadillas',
      efecto:   'El lanzador da miedo 5+.',
      diablura: 'Los no-muertos se ven afectados.',
      potencia: '+1 al miedo generado'),
    Sombra.new(
      id:       4,
      name:     'juego de sombras',
      efecto:   'El lanzador sustituye a la sombra de un objetivo.',
      diablura: 'Puedes realizar ataques espectrales, sin cesar el efecto.',
      potencia: '+1 ataque antes de cesar el efecto.'),
    Sombra.new(
      id:       5,
      name:     'caricia de Nagash',
      efecto:   'El objetivo recibe un ataque (no defendible) de un dado, con su propia fuerza.',
      diablura: 'Utiliza dados negros para el ataque.',
      potencia: '+1 fuerza')
  ]
end
