class Review

    attr_reader :viewer, :movie, :rating

    @@all = []

    def initialize(viewer, movie, rating)
        @viewer = viewer
        @movie = movie
        @rating = rating

        @@all << self
    end
    
    def viewer
        #returns the Viewer instance associated with the Review instance
    
    end

    #def movie
        #returns the Movie instance associated with the Review instance
    #end

    def rating
        @rating = rating
    end


    def self.all
        @@all
    end

end
