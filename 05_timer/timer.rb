def time_string(time)
  s,m,h=0               #Nos variables heures, minutes et secondes
  h=time/3600           #Quotient de la division entière par 3600
  m=(time-h*3600)/60    #Quotient de la division entière par 60 après avoir enlevé les heures
  s=time-h*3600-m*60    #Le reste après avoir enlevé les heures et minutes
  s<10?s="0#{s}":"#{s}" #Si les nombres sont inférieurs à 10, on rajoute un 0 à l'affichage
  m<10?m="0#{m}":"#{m}"
  h<10?h="0#{h}":"#{h}"
  "#{h}:#{m}:#{s}"
end
