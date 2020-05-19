# require and load the environment file
require_relative '../config/environment.rb'

# call this method to reload your models as you write code
def reload
  load 'config/environment.rb'
end

# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

person_01 = Viewer.new("hyojin")
person_02 = Viewer.new("Jack")
person_03 = Viewer.new("Rei")


movie_01 = Movie.new("Parasite")
movie_02 = Movie.new("Aladdin")
movie_03 = Movie.new("Bambi")
movie_04 = Movie.new("Homealone")
movie_05 = Movie.new("Jaws")

review_01 = Review.new(person_01, movie_01, 10)
review_02 = Review.new(person_01, movie_02, 5)
review_03 = Review.new(person_01, movie_03, 8)
review_04 = Review.new(person_02, movie_04, 4)
review_05 = Review.new(person_03, movie_05, 7)
review_06 = Review.new(person_03, movie_01, 9)
review_07 = Review.new(person_02, movie_01, 3)
review_08 = Review.new(person_02, movie_02, 6)
review_09 = Review.new(person_03, movie_03, 2)
review_10 = Review.new(person_01, movie_05, 10)



# ===== WARNING! DO NOT EDIT BELOW THIS LINE ===== #
binding.pry
0
