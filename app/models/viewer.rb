class Viewer

  attr_accessor :username

  @@all = []

  def initialize(username)
    @username = username
  
    self.class.all << self
    #@@all << self 
  end

  def self.all
    @@all
  end

  def username
    return "#{username}"
  end 

  def reviews
    #returns an array of `Review` instances associated with the `Viewer` instance.
    Review.all.select do |rewiev|
      review.viewer == self 
    end 
  end 

  def reviewed_movies
  #returns an array of `Movie` instances reviewed by the `Viewer` instance.
   self.reviews.map do |viewer|
    viewer.movie 
   end 
  end 

  def reviewed_movie?(movie)
  if movie == self.reviewed_movies
    return true
  else
    false 
  end
end 

  def rate_movie(movie, rating)
    if self.movie != movie
      Review.new(self, movie, rating)
    elsif self.movie == movie 
      self.rating = rating
    end 
  end 

end   


