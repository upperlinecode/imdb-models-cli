class Movie
  attr_accessor :title, :genre
  attr_reader :actors

  ALL_MOVIES = []

  def initialize(title, genre="unknown" )
    @title = title
    @genre = genre
    @actors = []
    ALL_MOVIES << self
  end

  def add_actor(actor)
    @actors << actor
    actor.add_movie(self)
  end

  def actors_names
    self.actors.collect do |actor|
      actor.name
    end
  end

  def self.all
    ALL_MOVIES
  end

  def self.all_titles
    ALL_MOVIES.collect do |movie|
      movie.title
    end
  end

end
