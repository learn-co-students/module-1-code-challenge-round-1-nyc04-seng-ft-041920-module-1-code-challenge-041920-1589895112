class Review
    attr_reader :viewer, :movie, :rating

    @@all=[]

    def initialize(viewer, movie, rating)
        @viewer = viewer
        @movie = movie
        @rating = rating
        # Viewer.all << self.viewer
        # Movie.all << self.movie
        # the review method should be updating everything but movies and viewer aren't getting updated.

        @@all << self
    end

    def self.all
        @@all
    end

    def viewer
        self.viewer
    end

    def movie
        self.movie
    end

end

