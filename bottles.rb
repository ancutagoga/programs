bottles.rb
nr_start = 10
nr_now = nr_start
if nr_now > 2 then 
	   puts nr_now.to_s +" bottle of beer on the wall, " + nr_now.to_s + " bottles of bier!"
	   nr_now =nr_now - 1
	   puts " Take one down, pass it around, " + nr_now.to_s + " bottle of beer on the wall!"
	          else
	    puts "2 bottles of beer on the wall, 2 bottle of beer!"
	    puts "Take one down, pass it around, 1 bottle of beer on the wall! "
	    puts "1 bootle of beer on the wall, 1 bootle of beer on the wall!"
	    puts "Thake one down, pass it around, no more bottles of bier on the wall!"
end	          	