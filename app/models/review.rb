require_relative 'movie.rb'
require_relative 'viewer.rb'

class Review
    attr_accessor :viewer, :movie, :rating

    @@all = []

    def initialize(viewer, movie, rating)
        @viewer = viewer 
        @movie = movie 
        @rating = rating 

        self.class.all << self
    end

    def self.all 
        @@all
    end


end

imaginary_viewer1 = Viewer.new("cutecat78")
imaginary_viewer2 = Viewer.new("dogsrule94")

mean_girls = Movie.new("Mean Girls")
john_tucker = Movie.new("John Tucker Must Die")
inception = Movie.new("Inception")

review1 = Review.new(imaginary_viewer1, mean_girls, 8)
review2 = Review.new(imaginary_viewer1, john_tucker, 6)
review3 = Review.new(imaginary_viewer2, inception, 10)
review4 = Review.new(imaginary_viewer2, mean_girls, 9)
review5 = Review.new(imaginary_viewer1, inception, 10)

# pp Review.all
# pp mean_girls.reviewers

# pp imaginary_viewer1.reviewed_movie?(mean_girls)
# pp imaginary_viewer1.reviewed_movie?(inception)

# pp imaginary_viewer1.rate_movie(mean_girls, 10)
# pp Movie.all


