# require and load the environment file
require_relative '../config/environment.rb'

# call this method to reload your models as you write code
def reload
  load 'config/environment.rb'
end

# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

# viewer:  def initialize(username)
hannah = Viewer.new("hkofkin")
mike = Viewer.new("mikepst")
john = Viewer.new("johndoe")
dave = Viewer.new("davesraves")
jamie = Viewer.new("reviewbyjamie")
adam = Viewer.new("adamep")

# movie:   def initialize(title)
batman = Movie.new("Batman")
getout = Movie.new("Get Out")
shestheman = Movie.new("She's The Man")

# review:   def initialize(viewer, movie, rating)
rev1 = Review.new(hannah, shestheman, 10)
rev2 = Review.new(mike, getout, 9)
rev3 = Review.new(john, batman, 8)
rev4 = Review.new(dave, batman, 5)
rev5 = Review.new(jamie, shestheman, 6)
rev6 = Review.new(adam, getout, 7)


# ===== WARNING! DO NOT EDIT BELOW THIS LINE ===== #
binding.pry
0
