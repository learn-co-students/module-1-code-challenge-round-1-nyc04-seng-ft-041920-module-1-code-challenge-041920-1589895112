# require and load the environment file
require_relative '../config/environment.rb'

# call this method to reload your models as you write code
def reload
  load 'config/environment.rb'
end

# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console
puts "**************************************************"
puts "**************************************************"
puts "              CHECKING GIVEN CODE"
puts "**************************************************"
puts "**************************************************"
puts ""
puts "============================================="
puts "          Viewer#initialize(username)"
puts "============================================="
puts ""
p marlon = Viewer.new("MARLON")
p marcelo = Viewer.new("MARCELO")
p isabel = Viewer.new("ISABEL")
puts ""
puts "============================================="
puts "          Viewer#username="
puts "============================================="
puts ""
p marlon.username = "RODRIGO"
puts "----Change back----"
p marlon.username = "MARLON"
puts ""
puts "============================================="
puts "          Viewer.all"
puts "============================================="
puts ""
p Viewer.all
puts ""
puts "============================================="
puts "          Movie#initialize(title)"
puts "============================================="
puts ""
p titanic = Movie.new("TITANIC")
p thegodf_1 = Movie.new("THE GOD FATHER - ")
p superman = Movie.new("THE SUPERMAN")
puts ""
puts "============================================="
puts "              Movie#title="
puts "============================================="
puts ""
p thegodf_1.title = "THE GOD FATHER - ONE"
puts ""
puts "============================================="
puts "              Movie#title"
puts "============================================="
puts ""
p titanic.title
puts ""
p thegodf_1.title
puts ""
puts "============================================="
puts "              Movie.all"
puts "============================================="
puts ""
p Movie.all
puts ""
puts "**************************************************"
puts "**************************************************"
puts "        FOUNDATION FOR REVIEW CLASS"
puts "**************************************************"
puts "**************************************************"
puts ""
puts "============================================="
puts "   Review#initialize(viewer, movie, rating)"
puts "============================================="
puts ""
p review_1 = Review.new(marlon, titanic, 5)
p review_2 = Review.new(marlon, superman, 5)
p review_3 = Review.new(marcelo, thegodf_1, 5)
p review_4 = Review.new(marcelo, titanic, 3)
p review_5 = Review.new(isabel, titanic, 4)
puts ""
puts "============================================="
puts "                Review#rating"
puts "============================================="
puts ""
p review_1.rating
puts ""
puts "============================================="
puts "                Review.all"
puts "============================================="
puts ""
p Review.all
puts ""
puts "============================================="
puts "                Review.all"
puts "============================================="
puts ""
puts "**************************************************"
puts "**************************************************"
puts "        OBJECT RELATIONSHIP METHODS"
puts "**************************************************"
puts "**************************************************"
puts ""
puts "               REVIEW CLASS"
puts ""
puts "============================================="
puts "                Review#viewer"
puts "============================================="
puts ""
p review_3.viewer
puts ""
puts "============================================="
puts "                Review#movie"
puts "============================================="
puts ""
p review_3.movie
puts ""
puts "============================================="
puts "                Review#movie"
puts "============================================="
puts ""
p review_3.movie
puts ""
puts "               VIEWER CLASS"
puts ""
puts "============================================="
puts "                Viewer#reviews"
puts "============================================="
puts ""
p marlon.reviews
puts ""
puts "============================================="
puts "           Viewer#reviewed_movies"
puts "============================================="
puts ""
p marlon.reviewed_movies
puts ""
puts "               MOVIE CLASS"
puts ""
puts "============================================="
puts "           Movie#reviews"
puts "============================================="
puts ""
pp titanic.reviews
puts ""
puts "============================================="
puts "           Movie#reviewers"
puts "============================================="
puts ""
pp titanic.reviewers
puts ""
puts "**************************************************"
puts "**************************************************"
puts "        AGGREGATE AND ASSOCIATION METHODS"
puts "**************************************************"
puts "**************************************************"
puts ""
puts "               VIEWER CLASS"
puts ""
puts "============================================="
puts "           Viewer#reviewed_movie?(movie)"
puts "============================================="
puts ""
# p marlon.reviewed_movie?(thegodf_1)
puts ""
puts "============================================="
puts "        Viewer#rate_movie(movie, rating)"
puts "============================================="
puts ""
p isabel.rate_movie(superman, 3)

# ===== WARNING! DO NOT EDIT BELOW THIS LINE ===== #
# binding.pry
0
