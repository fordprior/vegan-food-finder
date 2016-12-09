# encoding: UTF-8

# This is going to be the 'heart' of our food_finder app. This is going to handle all the user input and output, and essentially 'control' what's going on.

require 'restaurant'

class Guide

	def initialize(path=nil) #We give it a variable path to pass in as an argument to make the Guide class flexible, in case we want multiple Guide classes, say, for different cities.

	Restaurant.filepath = path	#This has a problem: the 'filepath' variable is not available for editing outside the Restaurant class.	

	# We've set the path in the Restaurant.rb file. Now we need to tell it where it should be.
	
		if Restuarant.file_exists?
			puts "Found restaurant file."

		elsif Restuarant.create_file
			puts "Created restaurant file."

		else puts "Exiting.\n\n"
			exit!

		end

	end

	def launch!
		introduction #(a welcme for the user)
		#action loop
		#   What do you want to do? (list, find, add, quit)
		#   And then do that action
		#This action will repeat until user quits
		conclusion #(a goodbye for the user)
	end

	def introduction
		puts "\n\n<<< Welcome to the Vegan Food Finder! >>>\n\n"
		puts "This is an interactie guide to find Richmond's most delicious vegan eats.\n\n"
	end

	def conclusion
		puts "\n >>> Goodbye and Bon Apetite! \n\n\n"
	end

end