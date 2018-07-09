def time_string(time)
  s,m,h=0
  h=time/3600
  m=(time-h*3600)/60
  s=time-h*3600-m*60
  s<10?s="0#{s}":"#{s}"
  m<10?m="0#{m}":"#{m}"
  h<10?h="0#{h}":"#{h}"
  "#{h}:#{m}:#{s}"
end
