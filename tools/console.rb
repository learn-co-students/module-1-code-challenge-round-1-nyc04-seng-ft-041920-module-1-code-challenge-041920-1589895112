# require and load the environment file
require_relative '../config/environment.rb'

# call this method to reload your models as you write code
def reload
  load 'config/environment.rb'
end

# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console
def reviews
  #returns an array of all the `Review` instances for the `Movie`
  Review.all.select do |review|
    review.movie == self
  end 
end 

def reviewers
  #returns an array of all of the `Viewer` instances that reviewed the `Movie
  self.reviews.map do |movie|
    movie.viewer
  end 
end 




# ===== WARNING! DO NOT EDIT BELOW THIS LINE ===== #
binding.pry
0
