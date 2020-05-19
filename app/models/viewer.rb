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

  def reviews
    Review.all.select { |review| review.viewer == self }
  end

  def reviewed_movies
    reviews.map { |review| review.movie }
  end

  def reviewed_movie?(movie)
    reviewed_movies.each do |moviee|
      #dont judge my variable names just needed them to be different to get the method to work
      if movie == moviee
        return true
      end
    end
    return false
  end

  def rate_movie(movie, rating)
    if reviewed_movie?(movie) == true
      movie.rating = rating
    else
      Review.new(self, movie, rating)
    end
  end

end
