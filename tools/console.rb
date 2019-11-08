# require and load the environment file
require_relative '../config/environment.rb'

# call this method to reload your models as you write code
def reload
  load 'config/environment.rb'
end

# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console


# Viewer
manny= Viewer.new("MannyG")
robert= Viewer.new("RobertL")

# Movie
meangirls= Movie.new("Mean Girls")
persepolis= Movie.new("Persepolis")

# add review
manny_review1= Review.new(manny, meangirls, 8)
manny_review2= Review.new(manny, persepolis, 10)
robert_review1= Review.new(robert, persepolis, 10)
manny_review=manny.rate_movie(meangirls, 8)
robert_review= robert.rate_movie(persepolis, 10)



# ===== WARNING! DO NOT EDIT BELOW THIS LINE ===== #
binding.pry
0
