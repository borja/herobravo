# Honor calculator, based on char lvl owned by player.
def honor(jugador)
  honor = 0 # Initialize by 0

  heros.each do |h|
    # Increase honor for each player lvl
    honor += h.nivel if h.jugador == jugador
    # ONLY for MB players
    unless ciudad?(jugador).empty?
      # Increase honor for each MB player lvl/3
      honor += (h.nivel / 3).to_i if h.ciudad == ciudad?(jugador).first['name']
    end
  end

  honor
end
