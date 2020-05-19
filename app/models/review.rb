class Review

    @@all = []

    attr_reader :viewer, :movie, :reader 

#     - `Review#initialize(viewer, movie, rating)`

def initialize(viewer, movie, rating)
    @viewer = viewer 
    @movie = movie 
    @rating = rating 

    @@all << self 
end
  
#   - `Review#rating`
#     - returns the rating for the `Review` instance

def rating 
    self.select do |ratings|
     return ratings.review 
end 

#   - `Review.all`
#     - returns an array of all initialized `Review` instances

def self.review  
    self.all.select do |review |
      review.all == self 
    end 
end 



   
