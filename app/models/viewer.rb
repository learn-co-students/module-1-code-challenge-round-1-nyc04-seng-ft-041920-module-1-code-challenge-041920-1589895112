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
    movie = reviews.detect{|review|             # Stores a Movie associated with this Viewer and their reviews into a Var
      review.movie == movie_name
   }
    if !reviewed_movie?(movie_name)             # Checks if the movie_name is in reviewed_movie
      Review.new(self, movie_name, new_rating)  # If it's not it creates a new instance of Review
    elsif reviewed_movie?(movie_name)           # Checks if the movie_name is in reviewed_movie
      movie.rating = new_rating                 # If it is it modifies the old rating to equal the value of new_rating.
    end  
  end
end

