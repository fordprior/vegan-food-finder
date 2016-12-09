# encoding: UTF-8

##README: This init.rb file is a starting point for my application. It could be named anything, like 'launch.rb', but 'init' is sort of a convention for any file that kicks off a process or app.

	#Here, we're going to set our Application Root.
	# This is a stand-alone commnand that stores wherever init.rb lives as APP_ROOT
	APP_ROOT = File.dirname(__FILE__)

	## You want to first require the guide.rb file (this is a class that will instantiate all the stuff we need to get our app started). There are a couple ways to do this. We will do Option #3.

		### NOTE 1: In the below examples, APP_ROOT is going to be the ABSOLUTE path of wherever your application lives. 
		### NOTE 2: Ruby will infer the .rb on 'guide.'


			### Option #1: 

			# 	require "#{APP_ROOT}/lib/guide"

				#The problem with this? Because UNIX & Windows use either '/' or '\' for filepaths, there can be incompatibility.

			### Option #2:

			#   require File.join(APP_ROOT, 'lib', 'guide')
				
				#This gets us around the incompatibility issue by using Ruby's File method, but there's still a better way.

			### Option 3:

			   	$:.unshift(File.join(APP_ROOT, 'lib'))
				require 'guide'

				# The special '$:' variable stores a set file path that you Ruby will reference from now on. And the '.unshift' part tells Ruby to append stuff onto whatever is currently stored there (which right now is nil)

# Now we're going to get things started by instantiating a new object of the Guide class, like this:

guide = Guide.new('restaurants.txt')
guide.launch!