# require and load the environment file
require_relative '../config/environment.rb'

# call this method to reload your models as you write code
def reload
  load 'config/environment.rb'
end

# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console
movie1 = Movie.new("Lord of The Ring")
movie2 = Movie.new ("Star Wars")

viewer1 = Viewer.new("coffee_dad")
viewer2 = Viewer.new ("movie_lover")

review1 = Review.new (viewer1, movie1, 10)
review2 = Review.new (viewer2, movie2, 9)




# ===== WARNING! DO NOT EDIT BELOW THIS LINE ===== #
binding.pry
0
