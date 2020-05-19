class Viewer
  attr_accessor :username

  @@all = []

  def initialize(username)
    @username = username
    @@all << self  
  end

  def self.all
    @@all
  end

  def reviews
    Review.all.select do |review|
      review.viewer == self
    end
  end

  def reviewed_movies
    reviews.map do |reviews|
      reviews.movie
    end
  end


  def reviewed_movie?(movie)
    if self.all

    end
  end


  def rate_movie(movie, rating)




  end

end


  
