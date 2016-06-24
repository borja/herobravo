# Honor calculator, based on char lvl owned by player.
def honor(jugador)
  heros.inject(0) do |honor, h|
    honor += h.nivel if h.jugador == jugador
    next h unless ciudad?(jugador).empty? # ONLY for MB players
    # Increase honor only for each MB player lvl/3
    next h unless h.ciudad == ciudad?(jugador).first['name']
    honor + (h.nivel / 3).to_i
  end
end
