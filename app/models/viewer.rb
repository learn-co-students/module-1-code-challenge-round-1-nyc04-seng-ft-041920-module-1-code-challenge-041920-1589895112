class Viewer
  attr_accessor :username

  @@all = []

  def initialize(username)
    @username = username
    self.class.all << self
  end

  def self.all
    @@all
  end
  
end

# - `Viewer.all`
#   - returns an array of all the Viewer instances that have been initialized

def self.viewer 
  self.all.select do |viewer|
    viewer.all == self 
  end 
end 


# `Viewer#reviewed_movie?(movie)`
#   - a `Movie` instance is the only argument
#   - returns `true` if the `Viewer` has reviewed this `Movie` (if there is a `Review` instance that has this `Viewer` and `Movie`), returns `false` otherwise

def reviewed_movie?(movie)
  movie.each do |viewer, review|
if self == review && movie 
  return true 
    else 
      false
        end 
      end 
    end
  end


# - `Viewer#rate_movie(movie, rating)`
#   - a `Movie` instance and a rating (number) are passed in as arguments
#   - if the `Viewer` instance and the passed `Movie` instance are _not_ already associated, this method should create a new `Review` instance
#   - if this `Viewer` has already reviewed this `Movie`, assigns the new rating to the existing `Review` instance

def rate_movie(movie, rating)
  