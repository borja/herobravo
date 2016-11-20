#!/usr/bin/ruby

def familiares_conocidos(familiar_id)
  total = []
  heros.select(&:pet).each do |h|
    next unless h.pet.id == familiar_id
    total << h.id
  end
  total
end
