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

  def reviews
  #   - returns an array of all the `Review` instances for the `Movie`.
    Review.all.select { |review_ins| review_ins.movie == self }
  end

  def reviewers
  #   - returns an array of all of the `Viewer` instances that reviewed the `Movie`.
    self.reviews.collect { |review_ins| review_ins.viewer }
  end

  def average_rating
  #   - returns the average of all ratings for the `Movie` instance
  #   - to average ratings, add all ratings together and divide by the total number of ratings.
    total_ratings = self.reviews.count
    sum_ratings = self.reviews.reduce(0) do |sum, review_ins|
      sum += review_ins.rating
      sum
    end
    sum_ratings.to_f() / total_ratings.to_f()
  end

  def self.highest_rated
  #   - returns the `Movie` instance with the highest average rating.
  # binding.pry
    Review.all.max_by { |review_ins| review_ins.movie.average_rating}
  end


end

# #### Movie

# - `Movie#initialize(title)`
#   - `Movie` is initialized with a title (string)
#   - title **can be** changed after the `Movie` is initialized
# - `Movie#title`
#   - returns the `Movie`'s title
# - `Movie.all`
#   - returns an array of all the `Movie` instances that have been initialized

#### Movie
# - `Movie#reviews`
#   - returns an array of all the `Review` instances for the `Movie`.
# - `Movie#reviewers`
#   - returns an array of all of the `Viewer` instances that reviewed the `Movie`.


#### Movie
# - `Movie#average_rating`
#   - returns the average of all ratings for the `Movie` instance
#   - to average ratings, add all ratings together and divide by the total number of ratings.
# - `Movie.highest_rated`
#   - returns the `Movie` instance with the highest average rating.
