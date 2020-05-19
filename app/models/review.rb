class Review
  attr_reader :viewer, :movie
  attr_accessor :rating

  @@all_reviews = []

  def initialize viewer_ins, movie_ins, rating_num
    @viewer = viewer_ins
    @movie = movie_ins
    @rating = rating_num

    @@all_reviews << self
  end

  def self.all
    @@all_reviews
  end


end

#### Review

# - `Review#initialize(viewer, movie, rating)`
#   - `Review` is initialized with a `Viewer` instance, a `Movie` instance, and a rating (number)
# - `Review#rating`
#   - returns the rating for the `Review` instance
# - `Review.all`
#   - returns an array of all initialized `Review` instances

# #### Review

# - `Review#viewer`
#   - returns the `Viewer` instance associated with the `Review` instance
# - `Review#movie`
#   - returns the `Movie` instance associated with the `Review` instance
