class Videogames::CLI

    def call
        list_games
        menu
        thank_you
    end 

    def list_games 
        puts "Top 10 PS4 Games:"
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
        input = nil 
        while input != "exit"
        puts "Type the number of the game you would like more info on, list for the top games list, or exit:"
        input = gets.strip.downcase
        case input
        when "1"
            puts "Take a look at game 1!"
        when "2" 
            puts "Take a look at game 2!"
        when "3" 
            puts "Take a look at game 3!"
        when "4" 
            puts "Take a look at game 4!"
        when "5" 
            puts "Take a look at game 5!"
        when "6" 
            puts "Take a look at game 6!"
        when "7" 
            puts "Take a look at game 7!"
        when "8" 
            puts "Take a look at game 8!"
        when "9" 
            puts "Take a look at game 9!"
        when "10" 
            puts "Take a look at game 10!"
        when "list"
            list_games 
        else
            puts "Type the number of the game you would like more info on, list for the top games list, or exit:"
        end
    end
    
    def thank_you
        puts "Thank you for checking out the top games. Come back soon to discover more top games."
    end 

end 



     

