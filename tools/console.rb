# require and load the environment file
require_relative '../config/environment.rb'

# call this method to reload your models as you write code
def reload
  load 'config/environment.rb'
end

# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

mv1 = Movie.new("The ghost")
mv2 = Movie.new("The Coder")
mv3 = Movie.new("The None")

bashir = Viewer.new('bashir')
jack = Viewer.new('jack')
rei = Viewer.new('rei')
michelle = Viewer.new('michelle')

#viewer, movie, rating
rev1 = Review.new(bashir, mv1, 100)
rev5 = Review.new(bashir, mv2, 50)
rev2 = Review.new(jack, mv1, 50)

rev3 = Review.new(rei, mv2, 100)
rev4 = Review.new(rei, mv3, 100)
rev5 = Review.new(bashir, mv3, 100)


# ===== WARNING! DO NOT EDIT BELOW THIS LINE ===== #
binding.pry
0
