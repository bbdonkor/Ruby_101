books = [
  {title: 'One Hundred Years of Solitude', author: 'Gabriel Garcia Marquez', published: '1967'},
  {title: 'The Great Gatsby', author: 'F. Scott Fitzgerald', published: '1925'},
  {title: 'War and Peace', author: 'Leo Tolstoy', published: '1869'},
  {title: 'Ulysses', author: 'James Joyce', published: '1922'}
]


books.sort_by do |hash|
  hash[:published]
end

# books.map do |hash|
#   hash.select do |key, value|
#     
# 
#             
# 
#   end
# end
# 
# books.select do |hash|
#   hash.sort_by