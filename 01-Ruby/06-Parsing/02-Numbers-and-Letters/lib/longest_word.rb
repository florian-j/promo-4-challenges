require 'open-uri'
require 'json'

def generate_grid(grid_size)
  # TODO: generate random grid of letters
  grid = []
  letters = ("A".."Z").to_a
  grid_size.times do
    letter = letters.sample
    grid << letter
  end
  p grid
end
# p generate_grid(9)

def translate(attempt)
  # Return the translation of the attempt / return nil if not an english word
  api_url = "http://api.wordreference.com/0.8/80143/json/enfr/#{attempt}"
  translation = {}
  open(api_url) do |contenu|
    string = JSON.parse(contenu.read)
    if string["term0"].nil?
      translation = nil
    else
      translation = string['term0']['PrincipalTranslations']['0']['FirstTranslation']['term']
    end
  end
  translation
end
# p translate("azerty")

def in_the_grid?(attempt, grid)
  letters = attempt.upcase.split("")
  res = letters.all? do |letter|
    grid.include?(letter)
  end
  res
end
# p in_grid?("bateau",["b", "a", "t", "e", "i"])

def compute_score(attempt, start_time, end_time)
  score = (end_time - start_time) > 60 ? 0 : attempt.size * ((1 - (end_time - start_time) / 60))
  score
end

def run_game(attempt, grid, start_time, end_time)
  # TODO: runs the game and return detailed hash of result
  result = { time: end_time - start_time, score: 0 }
  if in_the_grid?(attempt, grid)
    if translate(attempt).nil?
      result[:translation] = nil
      result[:message] = "not an english word"
    else
      result[:translation] = translate(attempt)
      result[:message] = "well done"
      result[:score] = compute_score(attempt, start_time, end_time)
    end
  else
    result[:translation] = translate(attempt)
    result[:message] = "not in the grid"
  end
  return result
end
