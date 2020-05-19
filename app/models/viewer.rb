class Viewer
  attr_accessor :username

  @@all = []

  def initialize(username)
    @username = username      # Creates Username for instance of <Class :: Viewer>
    self.class.all << self    # Stores all instances of <Class :: Viewer> into @@all
  end

  def self.all
    @@all                     # Returns collection of all instances of Viewer
  end

  def reviews
    Review.all.select{|review|
      review.viewer == self   # Returns collection of all Reviews that are associated with this instance
    }
  end

  def reviewed_movies
    # & is the to_enum operator
    reviews.map(&:movie)      # this is enumerating for every :movie and mapping it to a new array
  end

  def reviewed_movie?(movie)
    !!reviewed_movies.detect{|reviewed_movie| ## Too lazy to do an actual boolean check, this is a boolean check tho.
      reviewed_movie == movie
    }
  end

  def rate_movie(movie_name, new_rating)
    movie = reviews.detect{|review|
      review.movie == movie_name
   }
    if !reviewed_movie?(movie_name)
      Review.new(self, movie_name, new_rating)
    elsif reviewed_movie?(movie_name)
      movie.rating = new_rating
    end  
  end
end

