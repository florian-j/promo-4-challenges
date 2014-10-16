class Animal
  attr_reader :name, :specie, :color, :natural_habitat

  def name(name)
    @name = name
    # TODO: find good instruction
    self
  end

  def specie(specie)
    @specie = specie
    # TODO: find good instruction
    self
  end

  def color(color)
    @color = color
    # TODO: find good instruction
    self
  end

  def natural_habitat(natural_habitat)
    @natural_habitat = natural_habitat
    # TODO: find good instruction
    self
  end

  def to_s
    "Name: #{@name}, Specie: #{@specie}, Color: #{@color}, Natural Habitat: #{@natural_habitat}"
  end
end

# animal1 = Animal.new().name("bob").specie("fox").color("red").natural_habitat("forrest")
# p animal1.to_s

p Animal.new.name("Fox")
p Animal.new.to_s