=begin
puts "Enter your name:"
name = gets
puts "Enter your age:"
age = gets
puts ("Hello " + name + "You are :" + age + " years old") # in terminal => Hello Anna
                                                                           You are :30
                                                                           years old


---------------------------

puts "Enter your name:"
name = gets.chomp()
puts "Enter your age:"
age = gets.chomp()
puts ("Hello " + name + "You are :" + age + " years old") # in terminal =>Hello AnnaYou are :30 years old
=end
