# require and load the environment file
require_relative '../config/environment.rb'

# call this method to reload your models as you write code
def reload
  load 'config/environment.rb'
end

# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

movie1 = Movie.new("title1")
movie2 = Movie.new("title2")
movie3 = Movie.new("title3")
movie4 = Movie.new("title4")
movie5 = Movie.new("title5")

viewer1 = Viewer.new("user1")
viewer2 = Viewer.new("user2")
viewer3 = Viewer.new("user3")
viewer4 = Viewer.new("user4")
viewer5 = Viewer.new("user5")

review1 = Review.new(viewer1, movie5, 7)
review2 = Review.new(viewer2, movie4, 9)
review3 = Review.new(viewer3, movie5, 4)



# ===== WARNING! DO NOT EDIT BELOW THIS LINE ===== #
binding.pry
0
