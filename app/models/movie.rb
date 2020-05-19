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
    Review.all.select {|review| review.movie == self}
  end

  def reviewers
    self.reviews.collect {|review| review.viewer}
  end

  def get_ratings
    self.reviews.collect {|review| review.rating}.compact
  end

  def average_rating
      if self.get_ratings.length > 0 
        self.get_ratings.sum(0.0) / self.get_ratings.length
      else
        return 0
      end
  end

  def self.highest_rated
    self.all.max_by {|movie| movie.average_rating}
  end
end
