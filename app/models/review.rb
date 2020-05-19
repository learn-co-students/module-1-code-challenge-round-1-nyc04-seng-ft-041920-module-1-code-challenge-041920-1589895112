class Review

attr_accessor :viewer, :movie, :rating

    def initialize(viewer, movie, rating)
         @viewer = viewer   
         @movie = movie
         @rating = rating
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
