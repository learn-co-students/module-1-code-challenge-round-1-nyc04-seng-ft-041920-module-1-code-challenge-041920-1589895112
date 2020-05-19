class Review

    @@all = []

    attr_reader :Viewer, :Movie, :rating

    def initialize(viewer, movie, rating)
        @viewer = Viewer
        @movie = Movie
        @rating = rating

        self.class.all << self
    end

    def rating
        @rating
    end

    def self.all
        @@all
    end

end
