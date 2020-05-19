# require and load the environment file
require_relative '../config/environment.rb'

# call this method to reload your models as you write code
def reload
  load 'config/environment.rb'
end

# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console


uncle = Movie.new("The Man from UNCLE")
zombieland = Movie.new("Zombieland 2: Doubletap")
spygame = Movie.new("Spy Game")
mr_mrs_smith = Movie.new("Mr. & Mrs. Smith")

Movie.all



# ===== WARNING! DO NOT EDIT BELOW THIS LINE ===== #
binding.pry
0
