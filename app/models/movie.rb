class Movie
  attr_accessor :title

  @@all = []

  def initialize(title)
    @title = title
    self.class.all << self
  end
 
  def reviews
    Review.all.select do |review|
      review.movie == self
   end
  end

  def reviewers
    Viewer.all.select do |viewer|
      viewer.movie == self
   end
  end

  def average_rating
# returns the average of all ratings for the Movie instance
# to average ratings, add all ratings together and divide 
# by the total number of ratings. access ratings from review?
ratings.sum / ratings.length
  end

  def self.all
    @@all
  end

end
