require 'pry'

class Viewer
  
  attr_reader :reviews, :reviewed_movies
  attr_accessor :username

  @@all = []

  def initialize(username)
    @username = username

    @@all << self
  end

  def username
    @username = username
  end

  def reviews(reviewer)
    #returns an array of Review instances associated with the Viewer instance.
    self.all.select do |viewer|
    viewer.review == reviewer
  end

  end
  
  def reviewed_movies
    #returns an array of Movie instances reviewed by the Viewer instance.
    # Movie.all.select do |review|
    #   movie.review == self
    end

  end

  def reviewed_movie?(movie)
    # a Movie instance is the only argument
    # returns true if the Viewer has reviewed this Movie (if there is a Review instance that has this Viewer and Movie), returns false otherwise

    end
  end

  def rate_movie(movie, rating)
    # a Movie instance and a rating (number) are passed in as arguments
    # if the Viewer instance and the passed Movie instance are not already associated, this method should create a new Review instance
    # if this Viewer has already reviewed this Movie, assigns the new rating to the existing Review instance
  end

  def self.all
    @@all
  end
  
end
