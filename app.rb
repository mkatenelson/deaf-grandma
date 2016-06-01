class DeafGrandmaApp < Sinatra::Base

  get "/" do # this is the route, a ROOT route. our homepage!
    erb "WDI is awesome."
  end


  question_count = 0

	loop do
		puts "GRANDMA: 'Hi there Sonny! How are you!?'"

		response = gets.chomp
		question_count =+ 1

		if response != response.upcase
			puts "WHAT'S THAT SONNY?"
		elsif response === "GOODBYE GRANDMA"
			break
		else
			puts "NO DEAR, NOT SINCE 1928!"
		end

		if question_count % 5 == 0
			puts "It's getting late, dear."
		end
	end

end
