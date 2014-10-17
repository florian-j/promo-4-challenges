class Display
  def print_all_recipes(cookbook)
    puts "Voici les recettes:"
    cookbook.recipes.each do |recipe|
      puts "#{recipe.name}, #{recipe.description}"
    end
  end

  def new_recipe
    puts "Nom de la recette"
    name = gets.chomp
    puts "Contenu de la recette"
    description =  gets.chomp
    return [name, description]
  end

  def delete_recipe
    puts "Quelle recette supprimer?"
    return gets.chomp
  end
end