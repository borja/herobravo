# Main app class

class Hero < Hash
  attr_accessor :id, :name, :nivel,
                :personaje, :jugador, :status, :muerto, :gender,
                :repu, :cuerpo, :mente, :mov, :historia, :premio,
                :familiar, :mounts, :descendencia, :pareja, :progenitores,
                :hechizos, :shadows, :blood, :skills, :master,
                :armas, :armadura, :protecciones, :miscelaneas, :abalorios,
                :profesion, :ciudad, :titulo, :camino, :hijos,
                :piezas, :pociones, :pergaminos, :materiales, :oro, :tesoro

  def initialize(args)
    args.each do |k, v|
      instance_variable_set("@#{k}".to_sym, v) unless v.nil?
    end
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

  def cuerpo_base
    chars   = %w(mago elfo tiefling enano bárbaro)
    cuerpos = [4, 6, 6, 7, 8]
    chars.include?(clase) ? cuerpos[chars.index(clase)] : 5
  end
  
  def mente_base
    chars  = %w(mago elfo tiefling enano bárbaro)
    mentes = [6, 4, 4, 3, 2]
    chars.include?(clase) ? mentes[chars.index(clase)] : 5
  end

  def movimiento_base
    mb = 7
    mb += 1 if clase == 'elfo'
    mb -= 1 if clase == 'enano'
  end

  def clase
    case
    when %w(falangista matador ingeniero).include?(personaje) then 'enano'
    when %w(derviche druida arquero).include?(personaje) then 'elfo'
    when %w(vengador caminante brujo).include?(personaje) then 'tiefling'
    when %w(invocador conjurador hechicero).include?(personaje) then 'mago'
    when %w(señor\ de\ las\ bestias bersérker hoplita).include?(personaje) then 'bárbaro'
    when                 %w(clérigo paladín sacerdote).include?(personaje) then 'clérigo'
    when                 %w(nigromante asesino ladrón).include?(personaje) then 'ladrón'
    else 'unknown'
    end
  end

  def hab_base
    case clase
    when 'mago' then [
      Hab.new(name: 'Hechizar', description: 'Permite coger 3 sets de magia elemental al inicio del reto.')]
    when 'elfo' then [
      Hab.new(name: 'Hechizar', description: 'Permite coger 1 set de magia elemental al inicio del reto.'),
      Hab.new(name: 'Salto liviano', description: '+1 Saltar fosos')]
    when 'tiefling' then [
      Hab.new(name: 'Hechizar', description: 'Permite coger 3 hechizos entre las magias de fuego o sombras, al inicio del reto.'),
      Hab.new(name: 'Pacto demoníaco', description: '1PM: +1 dado azul de defensa hasta final del turno.')]
    when 'enano'    then [
      Hab.new(name: 'Desactivar trampas', description: '+1 desactivar trampas')]
    when 'bárbaro'  then [
      Hab.new(name: 'Furia', description: "1PM: +1 dado de ataque hasta final del turno. Además eres inmune a psicología.")]
    when 'ladrón'   then [
      Hab.new(name: 'Robar', description: "La tirada de tesoros se efectúa de forma independiente al grupo.")]
    when 'clérigo'  then [
      Hab.new(name: 'Rezar', description: '+6 plegarias sagradas al iniciar el Reto.')]
    end
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
    Profesion.new(profesion.merge(name: (profesions.find { |p| p.id == profesion['id'] }).name))
  end

  def baratijas
    miscelaneas.map  { |m|  Miscelanea.new(m) }       if miscelaneas
  end

  def proteccions
    protecciones.map { |p|  Proteccion.new(p) }       if protecciones
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
    skills.map       { |num| Habilidad.new(send(personaje.gsub('señor de las bestias', 'beastslord'), num)) } if skills
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
    patrimonio = 0
    patrimonio += oro
  end

  def rentas
    rentas = 0
    rentas += 1 if profesion
  end

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

  def padre
    if progenitores
      papa = progenitores.first
      case papa
      when Fixnum then return { 'type' => 'pj',  'char' => hero(papa) }
      when String then return { 'type' => 'pnj', 'char' => papa }
      else return "Fallo de padre => #{papa.class}"
      end
    else return nil end
  end

  def madre
    if progenitores
      mama = progenitores[1]
      case mama
      when Fixnum then return { 'type' => 'pj',  'char' => hero(mama) }
      when String then return { 'type' => 'pnj', 'char' => mama }
      else return "Fallo de madre => #{mama.class}"
      end
    else return nil end
  end

  def descendientes # I kill you with my spaguetti code, TODO: Tune up this!
    padres = heros.map(&:progenitores)
    hijos  = padres.each_index.select { |i| padres[i].include?(id) unless padres[i].nil? }
    hijos.empty? ? nil : hijos
  end

  def genderize
    return clase unless gender == 'female'
      case clase
      when 'elfo'     then return 'elfa'
      when 'mago'     then return 'maga'
      when "bárbaro"  then return "bárbara"
      when "clérigo"  then return "clériga"
      when "ladrón"   then return 'ladrona'
      when 'tiefling' then return 'tiefling-female'
      else return clase
      end
  end
end
