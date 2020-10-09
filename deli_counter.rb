katz_deli = []

def line(katz_deli)
  if katz_deli.empty?
    puts "The line is currently empty." 
    
  else 
    line_list = "The line is currently:"
    katz_deli.each_with_index do |value, index| 
      line_list += " #{index.to_i+1}. #{value}"
    end 
    puts "#{line_list}"
  end
end

# def take_a_number(katz_deli, customer)
#   katz_deli << customer
#   puts "Welcome, #{customer}. You are number #{katz_deli.size} in line."
#   return katz_deli
# end

$counter = 0
def take_a_number(katz_deli)
  $counter += 1
  katz_deli << $counter
  puts katz_deli
  puts "Welcome. You are number #{$counter} in line."
end

def now_serving(katz_deli)
  if katz_deli.empty?
    puts "There is nobody waiting to be served!"
    
  elsif !(katz_deli.empty?)
    puts "Currently serving #{katz_deli.shift}."
  end
end