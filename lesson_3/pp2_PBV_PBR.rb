def fun_with_ids
  a_outer = 42  # 85 before the block.
  b_outer = "forty two" # 2152729540 before the block.
  c_outer = [42] # 2152729540 before the block.
  d_outer = c_outer[0] # 85 before the block.

  a_outer_id = a_outer.object_id #a1
  b_outer_id = b_outer.object_id #a2
  c_outer_id = c_outer.object_id #a3
  d_outer_id = d_outer.object_id #a3

  puts "a_outer is #{a_outer} with an id of: #{a_outer_id} before the block."
  puts "b_outer is #{b_outer} with an id of: #{b_outer_id} before the block."
  puts "c_outer is #{c_outer} with an id of: #{c_outer_id} before the block."
  puts "d_outer is #{d_outer} with an id of: #{d_outer_id} before the block."
  puts

  1.times do
    a_outer_inner_id = a_outer.object_id #a1 // same 85 inside the block.
    b_outer_inner_id = b_outer.object_id #a2 same 2152729580 inside the block.
    c_outer_inner_id = c_outer.object_id #a3 same 2152729540 inside the block.
    d_outer_inner_id = d_outer.object_id #a4 same 85 inside the block.

    puts "a_outer id was #{a_outer_id} before the block and is: #{a_outer_inner_id} inside the block." 
    puts "b_outer id was #{b_outer_id} before the block and is: #{b_outer_inner_id} inside the block."
    puts "c_outer id was #{c_outer_id} before the block and is: #{c_outer_inner_id} inside the block."
    puts "d_outer id was #{d_outer_id} before the block and is: #{d_outer_inner_id} inside the block."
    puts

    a_outer = 22  # 85 before and: 45 after.
    b_outer = "thirty three" # 2152729580 before and: 2152728320 after
    c_outer = [44] # 2152729540 before and: 2152728280 after.
    d_outer = c_outer[0] # 85 before and: 89 after.

    puts "a_outer inside after reassignment is #{a_outer} with an id of: #{a_outer_id} before and: #{a_outer.object_id} after." #b1 new id
    puts "b_outer inside after reassignment is #{b_outer} with an id of: #{b_outer_id} before and: #{b_outer.object_id} after." #a2 # same 
    puts "c_outer inside after reassignment is #{c_outer} with an id of: #{c_outer_id} before and: #{c_outer.object_id} after." #a3 # same 
    puts "d_outer inside after reassignment is #{d_outer} with an id of: #{d_outer_id} before and: #{d_outer.object_id} after." #a4 # same
    puts


    a_inner = a_outer # 45 inside the block (compared to 45 for outer).
    b_inner = b_outer # 2152728320 inside the block (compared to 2152728320 for outer).
    c_inner = c_outer # 2152728280 inside the block (compared to 2152728280 for outer).
    d_inner = c_inner[0] # 89 inside the block (compared to 89 for outer).

    a_inner_id = a_inner.object_id
    b_inner_id = b_inner.object_id
    c_inner_id = c_inner.object_id
    d_inner_id = d_inner.object_id

    puts "a_inner is #{a_inner} with an id of: #{a_inner_id} inside the block (compared to #{a_outer.object_id} for outer)."
    puts "b_inner is #{b_inner} with an id of: #{b_inner_id} inside the block (compared to #{b_outer.object_id} for outer)."
    puts "c_inner is #{c_inner} with an id of: #{c_inner_id} inside the block (compared to #{c_outer.object_id} for outer)."
    puts "d_inner is #{d_inner} with an id of: #{d_inner_id} inside the block (compared to #{d_outer.object_id} for outer)."
    puts
  end

  puts "a_outer is #{a_outer} with an id of: #{a_outer_id} BEFORE and: #{a_outer.object_id} AFTER the block."
  puts "b_outer is #{b_outer} with an id of: #{b_outer_id} BEFORE and: #{b_outer.object_id} AFTER the block."
  puts "c_outer is #{c_outer} with an id of: #{c_outer_id} BEFORE and: #{c_outer.object_id} AFTER the block."
  puts "d_outer is #{d_outer} with an id of: #{d_outer_id} BEFORE and: #{d_outer.object_id} AFTER the block."
  puts

  puts "a_inner is #{a_inner} with an id of: #{a_inner_id} INSIDE and: #{a_inner.object_id} AFTER the block." rescue puts "ugh ohhhhh"
  puts "b_inner is #{b_inner} with an id of: #{b_inner_id} INSIDE and: #{b_inner.object_id} AFTER the block." rescue puts "ugh ohhhhh"
  puts "c_inner is #{c_inner} with an id of: #{c_inner_id} INSIDE and: #{c_inner.object_id} AFTER the block." rescue puts "ugh ohhhhh"
  puts "d_inner is #{d_inner} with an id of: #{d_inner_id} INSIDE and: #{d_inner.object_id} AFTER the block." rescue puts "ugh ohhhhh"
end

# a_outer is 22 with an id of: 85 BEFORE and: 45 AFTER the block.
# b_outer is thirty three with an id of: 2152729580 BEFORE and: 2152728320 AFTER the block.
# c_outer is [44] with an id of: 2152729540 BEFORE and: 2152728280 AFTER the block.
# d_outer is 44 with an id of: 85 BEFORE and: 89 AFTER the block.
# (notice that each variable keeps its new object/object_id even when we leave the block.)