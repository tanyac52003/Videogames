class Videogames::CLI


    def call
        puts "Welcome to Top Games"
        puts "To see some of the best PS4 games, type 'games'"
        puts "To exit Top Games, type 'exit'"
        menu
    end 

    def list_games 
        puts "Top 5 PS4 Games:"
        puts "1. game 1"
        puts "2. game 2"
        puts "3. game 3"
        puts "4. game 4"
        puts "5. game 5"

        puts"Which game would you like more information about?"
        game_selection
        input = gets.strip.downcase 
        game_selection(input)
    end 

    def game_selection(game)
        puts "#{game}"
    end 


    def menu 
       input = gets.strip.downcase

       if input == "games"
        list_games
        menu
       elsif input == "exit"
        thank_you
       else
        invalid_entry
    end

    def invalid_entry
        puts "Please type games or exit"
        menu
    end 
    
    def thank_you
        puts "Thank you for checking out the top games. Come back soon to discover more top games."
    end 

end 



     

