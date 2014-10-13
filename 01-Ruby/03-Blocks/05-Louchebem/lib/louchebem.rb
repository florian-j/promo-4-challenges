# Encoding: utf-8

# louchebemize(sentence)
  # TODO: implement your louchebem translator

def louchebemize_word(word)
random_suffix = %w(em é ji oc ic uche ès).shuffle.first

  if word.size == 1
    word
  elsif vowel


def translate_word(word)
  #Si le mot ne comprend qu'une seule lettre, ne pas le traduire
  if word.length == 1
    word

  elsif word.start_with?(a, e, i, o, u)
      # ajouter l au début du mot
      # ajouter "em" à la fin du mot
    word = "#{l}word#{em}"

  elsif word.start_with? !=('a', 'e', 'i', 'o', 'u')
      # déplacer la 1ère lettre à la fin du mot
      word << word[0]
      # ajouter l au début du mot et "em" à la fin du mot
      word = "#{l}word#{em}"



  # else le mot commence par plusieurs consonnes :
  #     # déplacer le 1er groupe de consonnes à la fin du mot

  #     # ajouter l au début du mot
  #     # ajouter "em" à la fin du mot
  #      word = "#{l}"word"#{em}"
  # end

  else
    print word
  end

end

a = translate_word(apple)

puts a