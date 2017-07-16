
class Dragon

	def initialize name
		@name = name
		@asleep = false
		@stuff_in_belly  = 10       # He's full.
		@stuff_in_intestine  = 0  # He doeas'n need to go.

		puts "#{@name}."
	end
	
	def feed
	   puts " You feed #{@name}."
	   @stuff_in_belly = 10
	   passage_of_time
	end
	
	def walk
	    puts " You walk #{@name}."
	    @stuff_in_intestine = 0
	    passage_of_time
	end
	
	def put_to_bed
	    puts "You put #{@name} to bed." 
	    @asleep = true
	    3.times do 
	    	if @asleep
	    		passage_of_time
	    	end 
	      if @asleep 
	           puts "#{@name}  snores, filling the room with smoke."
	       end
	     end
	    if @asleep 
	       @asleep = false
	       puts "#{@name} wakes up slowly."
	    end
	end

	def toos
	   puts "You toos #{@name} up into the air."
	   puts 'He gigles, whitch singes your eyebrows'
	   passage_of_time
	end
	
	def rock
	    puts "You rock #{@name} gently."
	    @asleep = true
	    puts 'He briefly dozes off ...'
	    passage_of_time
	    if @asleep
	         @asleep = false
	         puts '......but wakes when you stop.'
	    end
	end


	  # all the methods that we define here are methodes internal 
	  # to the object.(we cat feed the dragot but we can't ask him 
	  # whether he's hungry.)
	def hungry?
	  @stuff_in_belly <= 2
	end
	
	def poopy?
	  @stuff_in_intestine >=8
	end
	
	def passage_of_time
	   if @stuff_in_belly > 0
	          # move food from belly to intestine
	          @stuff_in_belly          =@stuff_in_belly           -1
	          @stuff_in_intestine      =@stuff_in_intestine.      +1
	        else   # our dragon is starving!
	          if @asleep
	             @asleep = false
	             puts 'He wakes un suddenly!'
	          end
	        puts "#{@name} is starving! In desperation, he hate YOU!"
	        exit # This qouits the program
         if @stuff_in_intestine >= 10
    	  @stuff_in_intestine = 0
    	  puts "woooops?   #{@name} had an accident...."
          end
    
          if hungry?
            if @asleep == false
         	 puts ' He wake up suddenly!'
             end
           puts "#{@name}'s stomach grumbles..."
          end
    
          if poopy?
            if @asleep
               @asleep = false
               puts 'He wakes up suddenly!'
            end
             puts "#{@name} does the potty dance...."
          end
     end
end

     pet = Dragon.new 'Norbert'
     pet.feed
     pet.toos
     pet.walk
     pet.put_to_bed
     pet.rock
     pet.put_to_bed
     pet.put_to_bed       
     pet.put_to_bed
     pet.put_to_bed            

puts 'what would you like to call your baby drgon?'
name = gets.chomp
pet  = Dragon.new name
obj = Object.new.  # just a blank, dummy obj

while true
  puts 'commands: feed, toos, walk, rock, put_to_bed, exit'
  command = gets.chomp
  if command == 'exit'
  	 exit
  	   elsif pet.respond_to?(command) && !obj.respond_to?(command)
  	   	  # accept only cpmands tha dragons have,
  	   	  # but regular objects *do not* have.
  	   	pet.send command
  	   	     else
  	   	       puts 'Huh?   Please type one of the commands.'
  	    end
  end




























