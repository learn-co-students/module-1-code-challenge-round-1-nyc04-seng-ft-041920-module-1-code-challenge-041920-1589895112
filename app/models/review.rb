class Review

    attr_reader :viewer, :movie, :rating

    @@all = []

    def initialize(viewer, movie, rating)
        @viewer = viewer
        @movie = movie
        @rating = rating

        @@all << self 
        #self.class.all << self 
    end

    def self.all
        @@all
    end 

    def rating
        return "#{rating}"
    end 

    def viewer
        #returns the `Viewer` instance associated with the `Review` instance
        @@all.map do |viewer|
            viewer.viewer
        end 
    end 

    def movie
        #returns the `Movie` instance associated with the `Review` instance
        self.viewer.map do |review|
            review.movie
        end 
    end 
    
end








