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
      Review.all.select {|review| review if review.movie == self}
    end

    def reviewers
      reviews.map {|review| review.viewer}
    end

    def average_rating
      total_array = reviews.map {|review| review.rating}
      total = total_array.sum
      total = total / total_array.length
      total
    end

    def self.highest_rated
      max = 0
      Movie.all.max {|movie| movie.average_rating}
    end
end
