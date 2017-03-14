########Bad Connection Psuedocode##########

# Greet user
# prompt user for input
# check to see if user entered anything
# respond with "HELLO?!" if user didn't enter anything
# if user entered something, check to see if there are any lowercase letters
# respond "I AM HAVING A HARD TIME HEARING YOU." if there are lowercase letters

# check if all uppercase
# respond "NO, THIS IS NOT A PET STORE" if user inputted all uppercase letters
# respond "ANYTHING ELSE I CAN HELP WITH" the first time user inputs "GOODBYE!"
# respond "THANK YOU FOR CALLING" on second "GOODBYE!" input and exit program

def run
	goodbye_count = 0
	
	puts "HELLO, THIS IS A GROCERY STORE!"

	loop do
		print ">"
		input = gets.chomp.to_s
		if(input.length == 0)
			puts "HELLO?!"
		elsif(input != input.upcase)
			puts "I AM HAVING A HARD TIME HEARING YOU."
		elsif(input == input.upcase && input != "GOODBYE!")
			puts "NO, THIS IS NOT A PET STORE"
		end
		
		if(input == "GOODBYE!" && goodbye_count == 0)
			goodbye_count += 1
			puts "ANYTHING ELSE I CAN HELP WITH"
		elsif(goodbye_count == 1)
			puts "THANK YOU FOR CALLING"
			break
		end
	end
end

run()