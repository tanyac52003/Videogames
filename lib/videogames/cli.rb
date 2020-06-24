class Videogames::CLI

    def call
        list_games
        menu
        thank_you
    end 

    def list_games 
        puts "Top 10 PS4 Games:"
       
    @games = Videogames::Topgames.all
    @games.each.with_index(1) do |game, i|

    end 

    def menu 
        input = nil 
        while input != "exit"
        puts "Type the number of the game you would like more info on, list for the top games list, or exit:"
        input = gets.strip.downcase
       
        if input.to_i > 0
            puts @games[input.to_i-1]
        elsif input == "list"
            list_games 
        else
            puts "Type the number of the game you would like more info on, 'list' for the top games list, or 'exit':"
        end
    end
    
    def thank_you
        puts "Thank you for checking out the top games. Come back soon to discover more top games."
    end 

end 



     

