def echo(string)
  string
end

def shout(string)
  string.upcase
end

def repeat(string,n=2)              #On place n=2 par défaut, sinon n est renseigné dans le test
  [string].cycle(n).to_a.join(' ')  #On fabrique un tableau avec n fois le mot string
end                                 #Et on rajoute les espaces avec .join

def start_of_word(string,n)
  string[0,n]                       #Slice du mot jusqu'à n
end

def first_word(string)
  string.split.first                #Méthode first pour afficher le premier objet du tableau
end

def titleize(string)
  small_words = ["on","the","and","of"]                   #Tableau des exceptions
  capitalized_words = string.split.map do |word|          #On vérifie pour chaque mot s'il est une exception
    small_words.include?(word) ? word : word.capitalize   #Et on ne met une majuscule qu'aux autres
  end
  capitalized_words.first.capitalize!                     #Le '!' de capitalize sert ici à appliquer définitivement
  capitalized_words.join(' ')                             #une majuscule au premier mot
end
