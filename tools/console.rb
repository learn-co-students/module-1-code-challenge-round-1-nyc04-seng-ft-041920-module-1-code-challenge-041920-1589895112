# require and load the environment file
require_relative "../config/environment.rb"

# call this method to reload your models as you write code
def reload
  load "config/environment.rb"
end

# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

cc = Viewer.new("Cristian")
jp = Viewer.new("JP")
sam = Viewer.new("Sam")

batman = Movie.new("Batman")
superman = Movie.new("Superman")
mario = Movie.new("Mario")

rv1 = Review.new(cc, batman, 5)
rv2 = Review.new(jp, superman, 4)
rv3 = Review.new(cc, mario, 3)

# ===== WARNING! DO NOT EDIT BELOW THIS LINE ===== #
binding.pry
