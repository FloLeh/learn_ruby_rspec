def echo(string)
  string
end

def shout(string)
  string.upcase
end

def repeat(string,*n)
  n.empty? ? string+" "+string:[string].cycle(n[0]).to_a.join(' ')
end

def start_of_word(string,n)
  string[0,n]
end

def first_word(string)
  string.split.first
end

def titleize(string)
  small_words = ["on","the","and","of"]
  capitalized_words = string.split.map do |word|
    small_words.include?(word) ? word : word.capitalize
  end
  capitalized_words.first.capitalize!
  capitalized_words.join(' ')
end
