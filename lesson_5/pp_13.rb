hsh = {
  'grape' => {type: 'fruit', colors: ['red', 'green'], size: 'small'},
  'carrot' => {type: 'vegetable', colors: ['orange'], size: 'medium'},
  'apple' => {type: 'fruit', colors: ['red', 'green'], size: 'medium'},
  'apricot' => {type: 'fruit', colors: ['orange'], size: 'medium'},
  'marrow' => {type: 'vegetable', colors: ['green'], size: 'large'},
}


arr = hsh.map do |_, value|
  if value[:type] == 'fruit'
    value[:colors].map do |color|
      color.capitalize
    end
  elsif value[:type] == 'vegetable'
    value[:size].upcase
  end
end

p arr

# ------------------------------------------

# Own example

# hsh_hsh = {
#   'dips' => {type: 'upperbody', muscle_group: ['triceps', 'back'], reps: '10-12'},
#   'close_grip_pullup' => {type: 'upperbody', muscle_group: ['bicep', 'upper_back'], reps: '10-12'},
#   'underhanded_pullup' => {type: 'upperbody', muscle_group: ['bicep', 'mid_lower_back'], reps: '10-12'},
#   'one_leg_squat' => {type: 'lowerbody', muscle_group: ['hamstrings', 'quads'], reps: '10'},
#   'sumo_squat' => {type: 'lowerbody', muscle_group: ['quads', 'hamstrings'], reps: '15-20'}
# 
# }
# 
# arr = hsh_hsh.map do |_, value|
#   if value[:type] == 'upperbody'
#     value[:muscle_group].map do |muscle|
#       muscle.capitalize
#     end
#   elsif value[:type] == 'lowerbody'
#     value[:reps].upcase
#   end
# end
# 
# p arr