vehicles = [
  'car', 'car', 'truck', 'car', 'SUV', 'truck',
  'motorcycle', 'motorcycle', 'car', 'truck'
]

def count_occurrences(automobile)
occurrences = {}

automobile.uniq.each do |element|
  occurrences[element] = automobile.count(element)
end

occurrences.each do |element, count|
  puts "#{element} => #{count} "
end
# car_length = automobile.count { |auto| auto == 'car'}
# suv_length = automobile.count { |auto| auto == 'SUV'}
# truck_length = automobile.count { |auto| auto == 'truck'}
# motorcycle_length = automobile.count { |auto| auto == 'motorcycle'}
#
# puts "car => #{car_length}"
# puts "SUV => #{suv_length}"
# puts "truck => #{truck_length}"
# puts "motorcycle => #{motorcycle_length}"

end

count_occurrences(vehicles)

