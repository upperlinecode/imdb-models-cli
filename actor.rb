class Actor
  attr_accessor :name
  attr_reader :movies

  ALL_ACTORS = []

  def initialize(name)
    @name = name
    @movies = []
    ALL_ACTORS << self
  end

  def add_movie(movie)
    @movies << movie
  end

  def self.all
    ALL_ACTORS
  end

  def self.all_names
    ALL_ACTORS.collect do |actor|
      actor.name
    end
  end

end
