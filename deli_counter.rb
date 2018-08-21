katz_deli = []

def line(line)
  puts "The line is currently empty." if line.size == 0
  
  print "The line is currently: "
  
  line.each_with_index { |e,i| print " #{i+1}. #{e}" } 
  print "\n" 
  
  
end

def take_a_number(line, name)
  line.push(name)
  puts "Welcome, #{name}. You are number #{line.size} in line."
end

def now_serving(line)
  if line.empty?
    puts "There is nobody waiting to be served!"
  else
    puts "Currently serving #{line.shift}."
  end
end


take_a_number(katz_deli, "Ada")
take_a_number(katz_deli, "Grace")
take_a_number(katz_deli, "Kent")

line(katz_deli)

now_serving(katz_deli)

line(katz_deli)

take_a_number(katz_deli, "Matz")

line(katz_deli)

now_serving(katz_deli) #=> "Currently serving Grace."
 
line(katz_deli) #=> "The line is currently: 1. Kent 2. Matz"