class Restaurant

  def initialize(name, food_type, address, nb_places)
    @name = name
    @food_type = food_type
    @address = address
    @nb_places = nb_places
   end

  attr_reader :name

  attr_accessor :address

 end

resto_1 = Restaurant.new("macdo", "us", "paris", 28)

p resto_1.name
p resto_1.address
p resto_1.address = "Lyon"



