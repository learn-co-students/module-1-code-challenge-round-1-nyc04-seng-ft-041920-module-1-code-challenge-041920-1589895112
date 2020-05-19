class Review 
    attr_reader :viewer, :movie, :rating

    @@all = []

    def initialize (viewer, movie, rating)
        @viewer = viewer
        @movie = movie
        @rating = rating
        @all << self
    end

    def self.all
        @all
    end

    def viewer
        self.all.select do |review|
            review.viewer == self
        end
    end

    def movie
        self.all.select do |review|
            review.movie == self
        end
    end
    


end
