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
    Review.all.find_all {|review| review.movie == self}
  end 

  def reviewers 
    self.reviews.collect {|review| review.viewer}
  end

  def average_rating
    num_reviews = self.reviews.count
    total = 0
    self.reviews.each {|review| total += review.rating}
    total/num_reviews.to_f
  end

  def self.highest_rated
    movies = Review.all.collect {|review| review.movie}
    movies.max {|movie| movie.average_rating}
  end

end
