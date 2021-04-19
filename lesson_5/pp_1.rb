arr = ['10', '11', '9', '7', '8']

arr.sort do |a, b| 
  a.to_i <=> b.to_i
end