class App

  def initialize
    show_menu
  end

  def show_menu
    puts "What would you like to do?"
    puts "1. Show Movies"
    puts "2. Show Actors"
    selection = gets.chomp
    selection == "1" ? show_movies : show_actors
  end

  def show_movies
    puts "---------"
    puts "MOVIES:"
    Movie.all_titles.each_with_index do |title, i|
      puts "#{i + 1}. #{title}"
    end
    puts "---------"
    show_menu
  end

  def show_actors
    puts "---------"
    puts "ACTORS:"
    Actor.all_names.each_with_index do |name, i|
      puts "#{i}. #{name}"
    end
    puts "---------"
    show_menu
  end

end
