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

end
