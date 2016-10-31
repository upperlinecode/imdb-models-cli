require './actor'
require './movie'
require './app'
require 'pry'


deniro = Actor.new("Robert Deniro")
foster = Actor.new("Jodie Foster")
sandler = Actor.new("Adam Sandler")
stiller = Actor.new("Ben Stiller")

raging_bull = Movie.new("Raging Bull", "action")
raging_bull.add_actor(deniro)
contact = Movie.new("Contact", "sci-fi")
contact.add_actor(foster)
madison = Movie.new("Billy Madison", "comedy")
madison.add_actor(sandler)
parents = Movie.new("Meet the Parents", "comedy")
parents.add_actor(stiller)
parents.add_actor(deniro)

App.new
