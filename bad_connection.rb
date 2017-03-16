def run
	goodbye_count = 0
	exit = false
	
	puts "HELLO, THIS IS A GROCERY STORE!"

	until exit == true do
		print ">"
		input = gets.chomp.to_s
		if input.length == 0
			puts "HELLO?!"
		elsif input != input.upcase
			puts "I AM HAVING A HARD TIME HEARING YOU."
		elsif input == input.upcase && input != "GOODBYE!"
			puts "NO, THIS IS NOT A PET STORE"
		end
		
		if input == "GOODBYE!" && goodbye_count == 0
			goodbye_count += 1
			puts "ANYTHING ELSE I CAN HELP WITH"
		elsif goodbye_count == 1
			puts "THANK YOU FOR CALLING"
			exit = true
		end
	end
end

run()