def translate_word(word)    #Méthode pour chaque mot
  if word[0] =~ /[aeiouy]/  #Première lettre est une voyelle ?
    word = word + "ay"
  else
    first_consonants = word.match(/[^aeioy]+/i)[0] #On récupère la suite de consonnes
    letters_to_swap = first_consonants.length      #Et leur nombre
    # Check if beginning of word is capitalized
    if first_consonants[0].match(/\p{Lu}/) #On vérifie si le début est en majuscule
      first_consonants.downcase!           #Pour le placer en minuscule avant le changement de position
      word = word[letters_to_swap..-1].capitalize + first_consonants + "ay" #Et ici, on les place à la fin
    else                                                                    #et on ajoute 'ay' et une majuscule
      word = word[letters_to_swap..-1] + first_consonants + "ay" #Sans majuscule, on enlève des étapes
    end
  end
end

def translate(string) #Méthode pour une phrase entière
  word_arr = string.split
  word_arr.map! { |word| translate_word(word) } #On utilise notre méthode sur chaque mot de la phrase
  word_arr.join(' ') #Et on reconstruit la phrase à partir du tableau
end
