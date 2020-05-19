# require and load the environment file
require_relative '../config/environment.rb'

# call this method to reload your models as you write code
def reload
  load 'config/environment.rb'
end

# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

m1 = Movie.new("The bee")
m2 = Movie.new("Walnuts")
m3= Movie.new("Running out of names")

v1 = Viewer.new("Senada")
v2 = Viewer.new("Mimi")
v3 = Viewer.new("Bob")

r1 = Review.new(v1, m1, 10)
r2 = Review.new(v2, m1, 5)
r3 = Review.new(v3, m2, 0)
r4 = Review.new(v3, m3, 50)


# ===== WARNING! DO NOT EDIT BELOW THIS LINE ===== #
binding.pry
0
