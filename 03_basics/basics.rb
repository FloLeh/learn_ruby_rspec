def who_is_bigger(a, b, c)
  if [a,b,c].include? nil
    "nil detected"
  else
    if [a,b,c].max==a
      "a is bigger"
    elsif [a,b,c].max==b
      "b is bigger"
    else
      "c is bigger"
    end
  end
end

def reverse_upcase_noLTA(string)
  string.reverse.upcase.tr("L","").tr("T","").tr("A","")      #.tr qui nous sert supprimer nos lettres
end                                                           #en ne les remplaçant par rien

def array_42(array)
  array.include? 42
end

def magic_array(array)
  array.flatten.sort.map{|n| n*2}.delete_if{|n| n%3==0}.uniq  #Les noms des méthodes en disent long
end                                                           #sur leur utilité
