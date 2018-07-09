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
  if string.include?(' ')
    string.split.map(&:capitalize).join(' ')
  else
    string[0].upcase+string[1,string.length]
  end
end
