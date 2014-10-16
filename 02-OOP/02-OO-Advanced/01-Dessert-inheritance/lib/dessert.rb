class Dessert
  attr_accessor :name, :calories

  def initialize(name, calories)
    @name = name
    @calories = calories
  end

  def healthy?
    @calories < 200
  end

  def delicious?
    return true
  end
end

class JellyBean < Dessert
  attr_reader :flavor

  def initialize(name, calories, flavor)
    super(name, calories)
    @flavor = flavor
  end

# étendre la class Dessert: ajouter getters et setters
# modifier delicious? to return false if flavor is "black licorice"

  def delicious?
    if @flavor == "black licorice"
      return false
    else
      super
    end
  end
end

#dessert1 = Dessert.new("Mousse Chocolat", 300)

dessert2 = JellyBean.new("Lic", 180, "black licorice")
p dessert2.name
p dessert2.calories
p dessert2.delicious?