class Review

    attr_writer :viewer, :movie, :review
    def initialize(viewer, movie, review)
        @viewer = viewer
        @movie = movie
    end

    def rating
        @rating = 5
        if @rating > 4
            @rating = "Very Good"
        else 
            @rating = "Try another movie"
        end
    end

    def review.all
        @@all
    end

    def self.all
        @@all << review.all
    end


end

# `Review#initialize(viewer, movie, rating)`
#   - `Review` is initialized with a `Viewer` instance, a `Movie` instance, and a rating (number)
# - `Review#rating`
#   - returns the rating for the `Review` instance
# - `Review.all`
#   - returns an array of all initialized `Review` instances
