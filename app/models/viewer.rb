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
  #   - returns an array of `Review` instances associated with the `Viewer` instance.
    Review.all.select { |review_ins| review_ins.viewer == self }
  end

  def reviewed_movies
    self.reviews.collect { |review_ins| review_ins.movie }
  end

  def reviewed_movie? movie_ins
    self.reviewed_movies.include? movie_ins
  end

  def rate_movie movie_ins, rating
#   - if the `Viewer` instance and the passed `Movie` instance are _not_ already associated, this method should create a new `Review` instance
#   - if this `Viewer` has already reviewed this `Movie`, assigns the new rating to the existing `Review` instance
    if self.reviewed_movie? movie_ins
      movie_reviewed = self.reviews.find{ |review_ins| review_ins.movie == movie_ins }
      movie_reviewed.rating = rating;
      # binding.pry
    else
      Review.new(self, movie_ins, rating)
    end
  end

end

# #### Viewer

# - `Viewer#initialize(username)`
#   - `Viewer` is initialized with a username (string)
#   - username **can be** changed after the Viewer is initialized
# - `Viewer#username`
#   - returns the Viewer's username
# - `Viewer.all`
#   - returns an array of all the Viewer instances that have been initialized

#### Viewer

# - `Viewer#reviews`
#   - returns an array of `Review` instances associated with the `Viewer` instance.
# - `Viewer#reviewed_movies`
#   - returns an array of `Movie` instances reviewed by the `Viewer` instance.


### Aggregate and Association Methods

#### Viewer

# - `Viewer#reviewed_movie?(movie)`
#   - a `Movie` instance is the only argument
#   - returns `true` if the `Viewer` has reviewed this `Movie` (if there is a `Review` instance that has this `Viewer` and `Movie`), returns `false` otherwise

# - `Viewer#rate_movie(movie, rating)`
#   - a `Movie` instance and a rating (number) are passed in as arguments
#   - if the `Viewer` instance and the passed `Movie` instance are _not_ already associated, this method should create a new `Review` instance
#   - if this `Viewer` has already reviewed this `Movie`, assigns the new rating to the existing `Review` instance
