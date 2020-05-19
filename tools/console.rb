# require and load the environment file
require_relative '../config/environment.rb'

# call this method to reload your models as you write code
def reload
  load 'config/environment.rb'
end

# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

# (title)

wows = Movie.new("Wolf of Wall Street")
gf = Movie.new("The Godfather")
eg = Movie.new("Endgame")


# viewer, movie, rating
great = Review.new("darren", "Wolf of Wall Street", 9)
classic = Review.new("chubbs", "The Godfather", 10)
stark = Review.new("jordan", "Endgame", 10)

darren = Viewer.new("darren")
chubbs = Viewer.new("chubbs")
jordan = Viewer.new("jordan")




# ===== WARNING! DO NOT EDIT BELOW THIS LINE ===== #
binding.pry
0
