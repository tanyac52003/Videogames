class Videogames::CLI

    def call
        list_games
        menu
    end 

    def list_games 
        puts "Top 10 PS4 Games of 2020:"
        puts <<-DOC.gsub /^\s*/, ''
          1. 
          2.
          3
          4.
          5.
          6.
          7.
          8.
          9.
          10.
    DOC
    end 

    def menu 
        puts "Select the number of the game you would like more info on:"
        input = gets.strip 
    end 
end 