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

    def viewer
        Viewer.all.select do |viewer|
            viewer.review == self
        end
    end

    def movie
        viewer.map do |viewer|
            viewer.movie
        end
    end
end
