require "csv"

filepath = "input.csv"


arrays = []
safes = 0
CSV.foreach(filepath) do |row|
  array = row[0].split
  safe = true
  array = array.map!{|item| item.to_i}
  p array
  if array.uniq.length == array.length && (array == array.sort.uniq || array == array.sort.uniq.reverse)
    for i in 0...array.length - 1  
      if ((array[i+1] - array[i]).abs < 1) || ((array[i+1] - array[i]).abs > 3)
        safe = false
      end
    end
  else
    safe = false
  end
  safes += 1 if safe
  p safe
end
p safes

# p safes
# puts safes


# first_nums = first_nums.sort
# second_nums = second_nums.sort
# total = 0

# first_nums.each do |num1|
#   count = 0
#   second_nums.each do |num2|
#     if num1 == num2
#       count += 1
#     end
#   end
#   sim_score = num1 * count
#   total += sim_score
# end

# puts arrays
# array = ["23", "20", "17", "16", "15", "14", "11", "8"]

# safe = true
# if array.uniq.length == array.length
#   p "safe!"
# else
#   p "NOT SAFE"
# end
# if array == array.sort.reverse
#   p "hello"
# else
#   p "YOURE AWFUL"
# end

# p array.sort.reverse
# for i in 0...array.length - 1  
#   p (array[i+1].to_i - array[i].to_i).abs
#   if ((array[i+1].to_i - array[i].to_i).abs < 1) || ((array[i+1].to_i - array[i].to_i).abs > 3)
#     # print array[i]
#     # print safe = false
#     p "I GOT HERE"
#   end
# end