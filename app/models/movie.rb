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
    Review.all.select{|review| review.movie == self}
  end

  def reviewers
    self.reviews.map{|review| review.viewer}
  end

  def average_rating
    sum = self.reviews.sum{|review| review.rating}.to_f
    (sum / self.reviews.count).round(2)

  end

  def self.highest_rated
    highest_avg = 0
    best_movie = nil
    # for each movie, find the average rating
    # compare to the current highest
    self.all.each do |movie|
      if movie.average_rating > highest_avg
        highest_avg = movie.average_rating
        best_movie = movie
      end
    end
    # return the movie with highest avg
    best_movie
  end

end
