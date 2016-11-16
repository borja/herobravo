# Main app class
class Hero < Hash
  attr_accessor :id, :name, :nivel,
    :personaje, :jugador, :status, :muerto, :gender,
    :repu, :cuerpo, :mente, :mov, :historia, :premio,
    :familiar, :mounts, :descendencia, :pareja, :progenitores,
    :hechizos, :shadows, :blood, :sand, :ice, :skills, :master,
    :armas, :armadura, :protecciones, :miscelaneas, :abalorios,
    :profesion, :ciudad, :titulo, :camino, :hijos,
    :piezas, :pociones, :pergaminos, :materiales, :oro, :tesoro

  def initialize(args)
    args.each do |k, v|
      instance_variable_set("@#{k}", v) unless v.nil?
    end
  end

  # TODO: Conflictive method
  def resistencia(elemento) # I'm sorry for this...
    total = 0 # Initialize default returns 0
    regex = /vs #{Regexp.quote(elemento)}/ # looks for "+N vs #{elemento}"
    reg2x = /vs todas las resistencias/

    %w(proteccions baratijas armour).each do |i|
      next unless send(i) # ask for item-type
      send(i).each do |item|
        if item.enchanted?
          item.enchants.each do |e|
            texto =  enchant(e)[:descripcion] # takes description
            if m = (regex =~ texto) # if positive (TODO: tune up this)
              bono = texto[m.to_i - 2].to_i # add the bonificator
              # puts "#{elemento}, #{item.name},magia: #{texto}"
              total += bono
            end
            next unless m = (reg2x =~ texto) # if positive (TODO: tune up this)
            bono = texto[m.to_i - 2].to_i # add the bonificator
            # puts "+1 todas las resistencias"
            total += bono
          end
        end
        next unless item.engarzado?
        %w(gemas joyas runas).each do |engarce|
          next unless eng = item.send(engarce)
          eng.each do |id|
            texto = send(engarce[0..-2], id).fits[item.fits] # takes description
            if m = (regex =~ texto) # if positive (TODO: tune up this)
              # puts "#{elemento}, #{item.name},#{engarce} #{texto}"
              bono = texto[m.to_i - 2].to_i # add the bonificator
              total += bono
            end
            next unless m = (reg2x =~ texto) # if positive (TODO: tune up this)
            bono = texto[m.to_i - 2].to_i # add the bonificator
            # puts "+1 todas las resistencias"
            total += bono
          end
        end
      end
    end
    total
  end

  # Custom meta-methods created by each item:
  (fields[0] + fields[1] + fields[2]).each do |f|
    define_method(f) do
      ((proteccions || []) + (baratijas || [])).detect { |item| item.fits == f }
    end
  end

  # Default-ed meta-methods
  def armour
    case armadura.class.to_s
    when 'Fixnum' then Armadura.new(id: armadura)
    when 'Hash'   then Armadura.new(armadura)
    else Armadura.new(id: 0)
    end
  end

  def get_weapon(weapon) # Analyze data structure
    case weapon.class.to_s
    when 'Hash'   then Arma.new(weapon)     # Ad-hoc item
    when 'Fixnum' then Arma.new(id: weapon) # Item mundano
    else Arma.new(id: 0) # Nil items
    end
  end

  def weapons
    if armas.class.to_s == 'Array'
      armas.map { |w| get_weapon(w) }
    else # Single weapon // nil item.
      [get_weapon(armas)]
    end
  end

  def clase
    clases.select { |_c, ps| ps.include?(personaje) }.keys.first
  end

  def hab_base
    habilidad_base(clase)
  end

  def lista_status(view)
    case view
    when 'licenciados'  then 'retirado'
    when 'heroes'       then 'activo'
    when 'ausentes'     then 'ausente'
    when 'reservistas'  then 'reserva'
    when 'extranjeros'  then 'extranjero'
    end
  end

  def elementos
    elementos = []
    elementos = magias.map(&:elemento).uniq if magias
    elementos << 'sombras' if shadows
    elementos << 'sangre'  if blood
    elementos << 'arena'   if sand
    elementos
  end

  def img_path
    "'../images/personajes/#{genderize}.png'"
  end

  def big_path
    "'../../images/portraits/#{name}.png'"
  end

  def reputacion
    repu || 0
  end

  def movimiento
    mov
  end

  def raza
    %w(clérigo ladrón bárbaro mago).include?(clase) ? 'humano' : clase
  end

  def female?
    sex == 'female'
  end

  def male?
    sex == 'male'
  end

  def anillos
    (baratijas || []).select { |m| m.fits == 'anillo'  }
  end

  def amuletos
    (baratijas || []).select { |m| m.fits == 'amuleto' }
  end

  def ataque
    weapons.first.categoria != 'distancia' ? weapons.first.ataque : 0
  end

  def rango
    weapons.first.categoria == 'distancia' ? weapons.first.ataque : 0
  end

  def defensa
    armour.defensa
  end

  def pet
    Pet.new(familiar) if familiar
  end

  def gremio
    prof = profesions.find { |p| p.id == profesion['id'] }
    Profesion.new(profesion.merge(name: prof.name))
  end

  def baratijas
    miscelaneas.map  { |m|  Miscelanea.new(m) } if miscelaneas
  end

  def proteccions
    protecciones.map { |p|  Proteccion.new(p) } if protecciones
  end

  def trinkets
    abalorios.map    { |a| Abalorio.new(a) } if abalorios
  end

  def pergs
    pergaminos.map   { |p| Pergamino.new(p) } if pergaminos
  end

  def cacharros
    piezas.map       { |num| Pieza.new(id: num) } if piezas
  end

  def brebajes
    pociones.map     { |num| Pocion.new(id: num) } if pociones
  end

  def componentes
    materiales.map   { |num| Material.new(id: num) } if materiales
  end

  def transportes
    mounts.map       { |num| Montura.new(montura(num)) } if mounts
  end

  def masters
    master.map       { |num| Habilidad.new(maestrodearma(num)) } if master
  end

  def habilidades
    if skills
      skills.map do |num|
        p = personaje.gsub('señor de las bestias', 'beastslord')
        Habilidad.new(send(p, num))
      end
    end
  end

  def magias
    hechizos.map { |num| spell(num) } if hechizos
  end

  def blood_magic
    blood.map    { |num| sangre(num) } if blood
  end

  def shadow_magic
    shadows.map  { |num| sombra(num) } if shadows
  end

  def sand_magic
    arenas.map  { |num| arena(num) } if sand
  end

  def sin_recursos
    tesoro.nil?
  end

  def empadronado
    ciudad || 'Jadessvärd'
  end

  def estado
    empadronado == 'Jadessvärd' ? (status || 'ausente') : 'extranjero'
  end

  # inventario
  def capacidad
    nivel / 3 + 3
  end

  def patrimonio
    oro
  end

  # TODO: Calculate profesion level and add rentas as param.
  def rentas
    profesion ? 1 : 0
  end

  def padre
    return nil unless progenitores
    papa = progenitores.first # Allways in the same position
    case papa
    when Fixnum then return { 'type' => 'pj',  'char' => hero(papa) }
    when String then return { 'type' => 'pnj', 'char' => papa }
    else return "Fallo de padre => #{papa.class}"
    end
  end

  def madre
    return nil unless progenitores
    return nil unless progenitores.count == 2
    mama = progenitores.last # Allways in the same position
    # Check class type, for polyform.
    case mama
    when Fixnum then return { 'type' => 'pj',  'char' => hero(mama) }
    when String then return { 'type' => 'pnj', 'char' => mama }
    else return "Fallo de madre => #{mama.class}"
    end
  end

  def descendientes
    padres = heros.map(&:progenitores) # nil values means no children
    # gets IDs of heroes which parents == self.ID
    hijos = padres.each_index.select do |i|
      padres[i].include?(id) unless padres[i].nil?
    end
    # Avoid empty arrays.
    hijos.empty? ? nil : hijos
  end

  def genderize
    # Word dictionary male vs female
    # TODO: some words are missing
    male   = %w(elfo mago bárbaro clérigo ladrón  rakshasa tiefling paladín  sacerdote)
    female = %w(elfa maga bárbara clériga ladrona rakshasi tieflina paladina sacerdotisa)
    # Returns char class, regarding the gender (only for females)
    gender == 'female' ? female[male.index(clase)] : clase
  end
end
