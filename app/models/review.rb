class Review

    attr_reader :viewer, :movie, :rating

    @@all = []

    def initialize(viewer, movie, rating)
        @viewer = viewer
        @movie = movie
        @rating = rating
    
        @@all << self
    end

    def self.all 
        @@all
    end

    def rating
        @rating
    end

    def viewer
        Viewer.all.find do |each_viewer|
            each_viewer.review == self
        end
    end

    def movie
        Movie.all.find do |each_movie|
            each_movie.review == self
        end
    end

end
