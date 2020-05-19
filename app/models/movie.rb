class Movie
  attr_accessor :title

  @@all = []

  def save
    @@all << self
  end

  def initialize(title)
    @title = title
    save
  end

  def self.all
    @@all
  end

  def reviews
    Review.all.select do |rv|
      # binding.pry
      rv.movie.title == self.title
    end
  end

  def reviewers
    reviews.map do |rv|
      rv.viewer
    end
  end

  def average_rating
  end
end

# A movie has many reviews
# A viewer has many reviews
# A review belongs to a viewer
# A review belongs to a movie
# We have a many to many relationship that are joined by the movie reviews. We should ensure the
# single source of truth remains in the review
# Movie ------->Review's <-------- Viewer
