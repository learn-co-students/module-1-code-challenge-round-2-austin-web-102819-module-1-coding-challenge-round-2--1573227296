class Review

    attr_accessor :viewer, :movie, :rating

    @@all_reviews= []
    def initialize(viewer, movie, rating)
        @viewer= viewer
        @movie= movie
        @rating= rating
        @@all_reviews << self
    end

    def self.all
        @@all_reviews
    end

end
