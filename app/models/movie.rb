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
    Review.all.select{|review| review.movie== self}
  end

  def reviewer
    reviews.map{|review| review.viewer }
  end

  def average_rating
    sum = reviews.map{|review| review.rating }.sum
    sum/self.reviews.size
  end

  def self.highest_rated
    #Review.all.max_by{|review| review.rating}.movie

    #find highest rating
    highest_rating = Review.all.map{|r| r.rating}.sort.reverse[0]
    #fing that rating of movie
    movies = Review.all.select{|r| r.rating == highest_rating}
    movies.map{|m| m.movie}


  end

end
