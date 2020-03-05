require 'pry'

katz_deli = []

def line(katz_deli)
  if katz_deli.length == 0
    puts "The line is currently empty."
    return
  end
  
  order = ["The line is currently:"]
  
  katz_deli.each_with_index do |name, i|
    place = i + 1
    order << "#{place}. #{name}"
  end
  str = order.join(" ")
  puts str
end

def take_a_number(katz_deli, name)
  katz_deli << name
  puts "Welcome, #{name}. You are number #{katz_deli.index(name)+1} in line."
end

def now_serving(katz_deli)
  if katz_deli.length > 0
    puts "Currently serving #{katz_deli[0]}."
    katz_deli.shift
  else
    puts "There is nobody waiting to be served!"
  end
end

