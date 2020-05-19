class Movie

  attr_accessor :title

  @@all = []

  def initialize(title)
    @title = title
    
    self.class.all << self
    #@@all << self
  end

  def self.all
    @@all
  end

  def title
    return "#{title}"
  end 

  def reviews
    #returns an array of all the `Review` instances for the `Movie`
    Review.all.select do |review|
      review.movie == self
    end 
  end 

  def reviewers
    #returns an array of all of the `Viewer` instances that reviewed the `Movie
    self.reviews.map do |movie|
      movie.viewer
    end 
  end 

  def average_rating
   average = @@all.rating.sum do |movie|
      movie.rating / self.rating.length 
   end 
   return average 
  end 

  def self.highest_rated
    average_rating.max_by do |movie|
      movie.rating 
    end 
  end 

end
