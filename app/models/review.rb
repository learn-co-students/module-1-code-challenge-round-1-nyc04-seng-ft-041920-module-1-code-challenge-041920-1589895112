class Review

    attr_reader :viewer, :movie
    attr_accessor :rating
    @@all = []

    def initialize(viewer, movie, rating)
        @viewer = viewer    # Is Instance of <Class :: Viewer>
        @movie = movie      # Is Instance of <Class :: Movie>
        @rating = rating    # Creates rating (Int) for <Class :: Review>

        @@all << self       # Collects all new instances of <Class :: Review>
    end

    def self.all
        @@all               # Returns collection of all instances of Review
    end
end

