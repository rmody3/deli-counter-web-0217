def line(katz_deli)
  if katz_deli.count == 0
    output = "The line is currently empty."
  else
    output = "The line is currently:"
    katz_deli.each_with_index{|val, index| output += " #{index+1}. #{val}"}
  end
  puts output
end

def take_a_number(katz_deli, newCustomer)
  katz_deli.push(newCustomer)
  place = katz_deli.count 
  puts "Welcome, #{newCustomer}. You are number #{place} in line."
end

def now_serving(katz_deli)
  if katz_deli.count == 0
    puts "There is nobody waiting to be served!"
  else
    puts "Currently serving #{katz_deli.first}."
    katz_deli.shift()    
  end
end
