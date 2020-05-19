class Viewer
  attr_accessor :username

  @@all = []

  def initialize(username)
    @username = username
    save
  end

  def save
    @@all << self
  end

  def self.all
    @@all
  end

  def reviews
    Review.all.select {|review| review.viewer == self}
  end

  def reviewed_movies
    reviews.collect {|review| review.movie}
  end

  def reviewed_movie?(str)
    reviewed_movies.include?(str) ? true : false
  end

  def rate_movie(str, num)
    # need to find the movie first!
    reviewed = self.reviews.find {|review| review.movie == str} # didn't work with select bc array??
    reviewed_movie?(str) ? reviewed.rating = num : Review.new(self, str, num)
  end
end
