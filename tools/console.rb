# require and load the environment file
require_relative '../config/environment.rb'

# call this method to reload your models as you write code
def reload
  load 'config/environment.rb'
end

# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console
movie1 = Movie.new("Die Hard")
movie2 = Movie.new("Finding Nemo")
movie3 = Movie.new("Lion King")
#movie4 = Movie.new("Chicken Run")

viewer1 = Viewer.new("movie_lover_25")
viewer2 = Viewer.new("i_love_movies_54")

review1 = Review.new(viewer1, movie1, 3)
review2 = Review.new(viewer1, movie2, 4)
review3 = Review.new(viewer1, movie3, 5)
review4 = Review.new(viewer2, movie1, 2)
review5 = Review.new(viewer2, movie2, 1)
review6 = Review.new(viewer2, movie3, 4)





# ===== WARNING! DO NOT EDIT BELOW THIS LINE ===== #
binding.pry
0
