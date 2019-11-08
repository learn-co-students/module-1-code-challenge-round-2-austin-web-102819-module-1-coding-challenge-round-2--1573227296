class Movie
  attr_accessor :title

  @@all = []

  def initialize(title)
    @title = title
    self.class.all << self
  end

  def self.all
    @@all
  end

  def average_rating
    movie= Review.all.select {|r| r.movie == self}
    ratings = movie.map {|r| r.rating}
    total= ratings.reduce {|sum, num| sum + num}.to_f
    average_rating= total / ratings.length
    average_rating
    
  end

  def reviews
    reviews=Review.all.select {|r| r.movie == self}
  end

  def viewers
    reviews.map {|r| r.viewer}
  end

  def self.highest_rated
    new_hash= { } # Sandwich bread (hash)
    Review.all.each do |r| #The meat
      movie_rating = r.movie.average_rating
      new_hash[r.movie.title]= movie_rating
    end
    new_hash.max_by {|k,v| v} #sandwich bread (hash)
   
    
  end
end
