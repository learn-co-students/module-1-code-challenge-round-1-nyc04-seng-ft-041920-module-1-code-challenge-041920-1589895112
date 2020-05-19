class Movie
  attr_accessor :title

  @@all = []

  def initialize(title)
    @title = title
    save
  end

  def save
    @@all << self
  end

  def self.all
    @@all
  end

  def reviews
    Review.all.select {|review| review.movie == self}
  end

  def viewers
    reviews.collect {|review| review.viewer}
  end

  def average_rating
    reviews.collect {|review| review.rating}.reduce(0) {|total, sum| total + sum}/reviews.count
  end

end
