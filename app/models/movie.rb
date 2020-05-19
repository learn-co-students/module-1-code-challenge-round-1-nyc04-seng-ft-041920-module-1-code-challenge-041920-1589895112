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
    Review.all.select{|review| review.movie[0] == self}
  end 

  def reviewers 
    self.reviews.map{|review| review.viewer} 
  end 

  def average_rating 
    self.reviews.reduce(0){|total, review| total + review.rating}/self.reviews.length
  end 

  def self.highest_rated 
    self.all.max_by{|movie| movie.average_rating}
  end 

end
