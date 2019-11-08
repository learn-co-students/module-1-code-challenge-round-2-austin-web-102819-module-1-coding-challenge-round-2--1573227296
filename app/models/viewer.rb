class Viewer
  attr_accessor :username

  @@all = []

  def initialize(username)
    @username = username
    self.class.all << self
  end

  def self.all
    @@all
  end

  def rate_movie(movie, rating)
    # if the `Viewer` instance and the passed `Movie` instance are _not_ already associated, this method should create a new `Review` instance
    reviews= Review.all.select{|r| r.viewer == self}
    movies= reviews.select {|r| r.movie == movie} 
    if movies.length > 0
      movies[0].rating = rating
    
    else 
      Review.new(self, movie, rating)
    end
  
  end

    def reviews
      reviews= Review.all.select{|r| r.viewer == self}
    end

    def reviewed_movies
      reviews= Review.all.select{|r| r.viewer == self}
      movies= reviews.map {|r| r.movie} 
      movies
      
    end
  def reviewed_movie?(movie)
    reviews= Review.all.select{|r| r.viewer == self}
    movies= reviews.select {|r| r.movie == movie} 
    if movies.length > 0
      true
    else
      false
    end
  end
  
end
