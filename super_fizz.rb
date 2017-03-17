class FizzBuilder
	def run
		(0..1000).each do |num|
			if(num % 3 == 0 && num % 5 == 0 && num % 7 == 0)
				puts "SuperFizzBuzz"
			elsif(num % 3 == 0 && num % 7 == 0)
				puts "SuperFizz"
			elsif(num % 5 == 0 && num % 7 == 0)
				puts "SuperBuzz"
			elsif(num % 3 == 0 && num % 5 == 0)
				puts "FizzBuzz"
			elsif(num % 3 == 0)
				puts "Fizz"
			elsif(num % 5 == 0)
				puts "Buzz"
			elsif(num % 7 == 0)
				puts "Super"
			else
				puts num
			end
		end
	end

	def run_v2
		(1..1000).each {|num|
			msg = ''
			msg += 'Super' if(num % 7 == 0)
			msg += 'Fizz' if(num % 3 == 0)
			msg += 'Buzz' if(num % 5 == 0)
			puts (msg.empty? ? num : msg);
		}
	end
end

superfizz = FizzBuilder.new
superfizz.run # Time elapsed 3.3019999999999996 milliseconds
superfizz.run_v2 # Time elapsed 5.065 milliseconds