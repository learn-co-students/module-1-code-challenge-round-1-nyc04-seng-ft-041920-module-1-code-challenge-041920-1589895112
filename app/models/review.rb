require 'pry'

class Review

    attr_reader :viewer, :movie
    attr_accessor :rating

    @@all = []

    def initialize(viewer, movie, rating)
        @viewer = viewer
        @movie = movie
        @rating = rating

        @@all << self
    end
    
    def viewer(viewer_reviewer)
        #returns the Viewer instance associated with the Review instance
        self.all.find do |review|
            review.viewer == viewer_reviewer
        end
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