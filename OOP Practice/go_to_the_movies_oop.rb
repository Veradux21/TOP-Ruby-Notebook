class Theater
    attr_accessor :name, :location
  def initialize(name,location)
      @name = name
      @location = location
      @movies = []
  end
  def add_movie(movie)
    @movies << movie
    movie.cinema = self
  end
end

class Movie
  attr_accessor :title, :showtime, :cinema
  @@all = []
  def initialize(title, showtime)
    @title = title
    @showtime = showtime
    @@all << self
  end
end

MyCinema = Theater.new("4 Point Theater","Newcastle")
MyMovie = Movie.new("Minions The Movie", 1215)
p MyCinema
p MyMovie
MyCinema.add_movie(MyMovie)
p MyCinema
p MyMovie
