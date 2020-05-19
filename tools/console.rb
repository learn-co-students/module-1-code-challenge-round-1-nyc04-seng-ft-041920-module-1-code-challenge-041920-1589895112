# require and load the environment file
require_relative '../config/environment.rb'

# call this method to reload your models as you write code
def reload
  load 'config/environment.rb'
end

# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

# MOVIES INSTANCES!!!!!!!!!!!!!!!!!!!!!!!!!!!
mib = Movie.new("Men In Black")
zkeeper = Movie.new("Zookeeper")
gu = Movie.new("Grown Ups")
nl = Movie.new("Nacho Libre")
hr = Movie.new("Hacksaw Ridge")
avatar = Movie.new("Avatar")

# VIEWER INSTANCES !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
jeff = Viewer.new("j3ffh95")
matt = Viewer.new("matt_03")
john = Viewer.new("john_d")
kate = Viewer.new("kate101")

# REVIEW INSTANCES!!!!!!!!!!!!!!!!!!!!!!!!!!
r1 = Review.new(jeff, avatar, 10)
r2 = Review.new(john, gu, 5)
r3 = Review.new(jeff, nl, 8)
r4 = Review.new(kate, mib, 10)
r5 = Review.new(matt, nl, 4)
r6 = Review.new(john, hr, 10)
r7 = Review.new(kate, nl, 7)

# Expectations
# nl.average_rating => 19 / 3 ==> 6.3

# Movie.highest_rated => avatar


# - `Review#viewer`
#   - returns the `Viewer` instance associated with the `Review` instance
# - `Review#movie`
#   - returns the `Movie` instance associated with the `Review` instance

#### Viewer

# - `Viewer#reviews`
#   - returns an array of `Review` instances associated with the `Viewer` instance.
# - `Viewer#reviewed_movies`
#   - returns an array of `Movie` instances reviewed by the `Viewer` instance.

#### Movie

# - `Movie#reviews`
#   - returns an array of all the `Review` instances for the `Movie`.
# - `Movie#reviewers`
#   - returns an array of all of the `Viewer` instances that reviewed the `Movie`.

#### Viewer

# - `Viewer#reviewed_movie?(movie)`
#   - a `Movie` instance is the only argument
#   - returns `true` if the `Viewer` has reviewed this `Movie` (if there is a `Review` instance that has this `Viewer` and `Movie`), returns `false` otherwise
# - `Viewer#rate_movie(movie, rating)`
#   - a `Movie` instance and a rating (number) are passed in as arguments
#   - if the `Viewer` instance and the passed `Movie` instance are _not_ already associated, this method should create a new `Review` instance
#   - if this `Viewer` has already reviewed this `Movie`, assigns the new rating to the existing `Review` instance

#### Movie

# - `Movie#average_rating`
#   - returns the average of all ratings for the `Movie` instance
#   - to average ratings, add all ratings together and divide by the total number of ratings.
# - `Movie.highest_rated`
#   - returns the `Movie` instance with the highest average rating.







# ===== WARNING! DO NOT EDIT BELOW THIS LINE ===== #
binding.pry
0
