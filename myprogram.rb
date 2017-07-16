puts "the age of the author is: "
puts 1160000000 / (60*60*24*365)
puts nil

puts "My age in seconds is: "
puts 60*60*24*365*34
puts nil


puts "My age in secounds is: "
puts(Time.new - Time.gm(1983, 01 ,20 , 13 , 31))   
puts nil


puts "What is your first name? "
f_name = gets.chomp.upcase
puts"What is your middle name?"
m_name = gets.chomp.upcase
puts "What is your last name?"
l_name = gets.chomp.upcase
puts "Nadia Comaneci is cooler than you, #{f_name} #{m_name} #{l_name}. "


puts nil
puts nil
puts "Hey! What is your favorit number? "
fav_num = gets.chomp.to_i
puts "That is ok, I guess, but isnt #{fav_num + 1} just a bit better?"   




var1 = "stop"
var2 = "deliver repaid desserts"
var3 = "........TCELES B HSUP A magic spell? "
puts var1.reverse
puts var2.reverse
puts var3.reverse
puts var1
puts var2
puts var3


puts nil
puts nil

 
puts "What is your full name?"
name = gets.chomp
puts "Did you know there are " + name.length.to_s + " characters"
puts "in your name," + name+ "?"
puts nil
puts nil



name = ["Goga", "sunier", "milos", "kutrapali"]
puts  "Cant you see I am busy?!  make it fast, #{name[rand(4)].upcase}!"
request =gets.chomp
puts  "WHADDAYA MEAN #{request.upcase}?!? YOU ARE FIRED!!"
puts nil
puts nil





puts "Give me words to sort them:"
words =[]
while true
	word =gets.chomp
	break if word.empty?
	  words << word
	end

puts "sweet! Here are the sorted words:"
puts words.sort