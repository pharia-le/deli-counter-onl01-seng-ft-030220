require 'pry'

katz_deli = []

def line(array)
  if array.length == 0
    puts "The line is currently empty."
  else
    order = "The line is currently:"
    array.each.with_index(1) do |name, i|
      order << " #{i}. #{name}"
    end
    puts order
  end
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

