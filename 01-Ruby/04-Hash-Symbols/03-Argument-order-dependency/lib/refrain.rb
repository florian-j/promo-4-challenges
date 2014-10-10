def refrain(lyrics, number_of_times = 1, vibrato = 0, strong = false)
  refrain = []
  lyrics += lyrics[lyrics.size-1] * vibrato
  lyrics.upcase! if strong

  number_of_times.times do
    refrain << lyrics
  end

  refrain.join(" ")
end

#p refrain("au clair de la lune", 3, 5)

  #TODO: implement this better version which breaks argument order dependency

def better_refrain(lyrics, options = {})
refrain = []
  lyrics += lyrics[lyrics.size-1] * options[:vibrato].to_i
  lyrics.upcase! if options[:strong]

  options[:number_of_times].times do
    refrain << lyrics
  end
refrain.join(" ")
end


p better_refrain("au clair de la lune", {vibrato: 3, number_of_times: 4, strong: true})



