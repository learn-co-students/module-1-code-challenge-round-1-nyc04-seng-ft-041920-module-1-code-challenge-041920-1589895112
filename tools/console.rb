# require and load the environment file
require_relative '../config/environment.rb'

# call this method to reload your models as you write code
def reload
  load 'config/environment.rb'
end

# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console


m1 = Movie.new("Ameli1e")
v1 = Viewer.new("Emily")
r1 = Review.new(v1, m1, 5)
r2 = Review.new(v1, m1, 0)

v1.review = r1
m1.review = r1

m1.viewer = v1

v1.movie = m1

# ===== WARNING! DO NOT EDIT BELOW THIS LINE ===== #
binding.pry
0
