# require and load the environment file
require_relative '../config/environment.rb'

# call this method to reload your models as you write code
def reload
  load 'config/environment.rb'
end

# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console
m1 = Movie.new("Harry Potter")
m2 = Movie.new("LOTR")
m3 = Movie.new("The Princess Bride")
m4 = Movie.new("Inception")
m5 = Movie.new("Back to the Future")


v1 = Viewer.new("Elisheva")
v2 = Viewer.new("Thomas")
v3 = Viewer.new("Bob")


r1 = Review.new(v1, m1, 7)
r2 = Review.new(v2, m3, 8.6)
r3 = Review.new(v2, m2, 8)
r4 = Review.new(v3, m2, 7.8)

r5 = Review.new(v1, m4, 2)
r6 = Review.new(v2, m4, 5)
r7 = Review.new(v3, m4, 8)
r8 = Review.new(v3, m5, 6)
r9 = Review.new(v1, m5, 7.8)
r10 = Review.new(v2, m5, 3)


# ===== WARNING! DO NOT EDIT BELOW THIS LINE ===== #
binding.pry
0
