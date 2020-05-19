class Movie
  attr_accessor :title, :review, :viewer

  @@all = []

  def initialize(title)
    @title = title
    @review = review
    @viewer = viewer

    self.class.all << self
  end

  def self.all
    @@all
  end

  def title
    @title
  end

  def reviews
    Review.all.map do |each_review|
      each_review.movie
    end
  end

  def reviewers
    Viewer.all.map do |each_viewer|
      each_viewer.movie
    end
  end

  def average_rating ##I think it's right but can't get the console output...
    
    total = 0
    Review.all.select do |each_review|
    #binding.pry
      total += each_review.rating
      total/Review.all.length
    end
    return total
  end 

  def self.highest_rated
    Review.all.max_by do |each_review|
      each_review.rating
    end
  end

end
