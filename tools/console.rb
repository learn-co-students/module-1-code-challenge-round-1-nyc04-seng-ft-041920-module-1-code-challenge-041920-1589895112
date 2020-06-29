require 'pry'
# require and load the environment file
require_relative '../config/environment.rb'

# require_relative 'models/movie'
# require_relative 'models/viewer'
# require_relative 'models/review'

# call this method to reload your models as you write code
def reload
  load 'config/environment.rb'
end

# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

# Movie is initialized with a title (string)
m1 = Movie.new("Jaws")
m2 = Movie.new("Very Bad Things")
m3 = Movie.new("Now and Then")

# Viewer is initialized with a username (string)

v1 = Viewer.new("Vivica")
v2 = Viewer.new("Morris")
v3 = Viewer.new("Patty")

# Review is initialized with a Viewer instance, a Movie instance, and a rating (number)

r1 = Review.new("Vivica", "Very Bad Things", 7)
r2 = Review.new("Morris", "Now and Then", 6)
r3 = Review.new("Patty", "Jaws", 5)

# ===== WARNING! DO NOT EDIT BELOW THIS LINE ===== #
binding.pry
0
