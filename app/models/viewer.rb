class Viewer
  attr_accessor :username

  @@all = []

  def initialize(username)
    @username = username
    self.class.all << self
  end

 def reviews
     Review.all.select do |review|
     review.viewer == self
     end
 end

 def reviewed_movies
    Movie.all.select do |movie|
      movie.viewer == self
    end
 end

 def reviewed_movie?(movie)
    if movie.reviewed_movies 
      true
    else
     false
    end
 end

  def self.all
    @@all
  end
  
end
