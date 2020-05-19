# require and load the environment file
require_relative '../config/environment.rb'

# call this method to reload your models as you write code
def reload
  load 'config/environment.rb'
end

# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

# Relationships: 
# A Movie can have many Reviews, and many Viewers.
# A Viewer can have many Movies, and many Reviews.
# A Review can have One Movie, and One Viewer

# Movie
die_hard = Movie.new("Live Free or Die Hard")
thing = Movie.new("The Thing")
shining = Movie.new("The Shining")
interstellar = Movie.new("Interstellar")
wolf_brigade = Movie.new("Jin-Roh")

#Viewer
jerry = Viewer.new("Jerry")
jill = Viewer.new("Jill")
joe = Viewer.new("Joe")
james = Viewer.new("James")
jessie = Viewer.new("Jessie")
jon = Viewer.new("Jon")

# Review
dh1 = Review.new(jerry, die_hard, rand(1..10))
dh2 = Review.new(jill, die_hard, rand(1..10))
dh3 = Review.new(jon, die_hard, rand(1..10))
t1 = Review.new(joe, thing, rand(1..10))
t2 = Review.new(jessie, thing, rand(1..10))
s1 = Review.new(jon, shining, rand(1..10))
s2 = Review.new(jerry, shining, rand(1..10))
i1 = Review.new(jerry, interstellar, rand(1..10))
i2 = Review.new(jon, interstellar, rand(1..10))
i3 = Review.new(jill, interstellar, rand(1..10))
i4 = Review.new(james, interstellar, rand(1..10))
i5 = Review.new(jessie, interstellar, rand(1..10))
i6 = Review.new(joe, interstellar, rand(1..10))
wb1 = Review.new(jon, wolf_brigade, rand(1..10))
wb2 = Review.new(jill, wolf_brigade, rand(1..10))



# ===== WARNING! DO NOT EDIT BELOW THIS LINE ===== #
binding.pry
0

