class Movie
  attr_accessor :title

  @@all = []

  def initialize(title)
    @title = title              # Creates a title for <Class :: Movie>
    self.class.all << self      # Shovels all instances of <Class :: Movie>
  end

  def self.all
    @@all                       # Displays all instances of <Class :: Movie>
  end

  def reviews
    Review.all.select{|review|  # Iterates through <Class :: Review>  
      review.movie == self      # Checks to see if the current instance is the movie located in <Class :: Review> @@all
    }
  end

  def reviewers 
    reviews.map(&:viewer)       # Returns an array of all Viewers associated with this movie
  end

  def average_rating
    total_rating = reviews.map(&:rating).compact # grabs every value of the symbol :rating
    # Removes all nil elements and then joins each element with Unary +
    total_rating.reduce(:+) / total_rating.count # Counts all of the elements and then divides count by total
  end

  def self.highest_rated
    # highest_hash = {}
    rating = 0
    current_highest = nil

    self.all.select{|movies|
      Review.all.each{|review|  
        if review.movie == movies              # Checks Every Review for Every Movie Rating
          if review.rating > rating            # Checks if the current <Class :: Review> instance for a <Class :: Movie> is greater than rating
            rating = review.rating             # Stores Highest rating found
            current_highest = review.movie     # Stores the current Instance of <Class :: Movie> if <Class :: Movie> .rating is greater than rating
          end
        end
      }
    }

    # highest_hash.sort_by {|movie, rating| rating}.last     # Sorts the current highest ratings and displays the highest out of all of them
    current_highest
  end

end