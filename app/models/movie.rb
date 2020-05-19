class Movie
  attr_accessor :title

  @@all = []

  def initialize(title)
    @title = title
    self.class.all << self
  end

  def self.all
    @@all
  end

  # - `Movie#title`
  # - returns the `Movie`'s title

def title 
  movie.map do |title|
    return title.self 
end 

# - `Movie.all`
#   - returns an array of all the `Movie` instances that have been initialized

def self.movies 
  self.all.select do |movies|
    movies.all == self 
  end 
end 

end
