class Movie
  attr_accessor :title

  @@all = []

  def initialize(title)
    @title = title
    self.class.all << self
  end

  # Review.all.each { |review| p review }
  # binding.pry

  def reviews
    Review.all.select { |review| review.movie == self }
  end

  def reviewers
    Review.all.map { |review| review.viewer }.uniq
  end

  def self.all
    @@all
  end

end
