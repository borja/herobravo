#!/usr/bin/ruby
# encoding: UTF-8
# Main searching methods

# DB Loader
def pets
  load_yaml('personaje/pets')
end

# ID search
def pet(id)
  pets[id]
end

# Name search
def familiar(nombre)
  pet = pets.find { |p| p['name'] == nombre }
  Pet.new(pet)
end

# % Statistics
def porcentaje_heroes_con_familiar
  h_familiares = heros.select(&:pet)
  ((h_familiares.count / heros.count.to_f) * 100.0).round(2)
end

def porcentaje_familiares_torpes
  h_familiares = heros.select(&:pet)
  familiares_torpes = h_familiares.count { |h| h.pet.torpe }
  ((familiares_torpes.to_f / h_familiares.count) * 100.0).round(2)
end
