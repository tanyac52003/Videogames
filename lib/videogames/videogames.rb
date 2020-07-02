require_relative "./videogames/version"
require_relative './videogames/cli'
require_relative './videogames/topgames'
require_relative './videogames/api'
require "json"
require "open-uri"

require 'net/https'
http = Net::HTTP.new('api-v3.igdb.com',443)
http.use_ssl = true
request = Net::HTTP::Post.new(URI('https://api-v3.igdb.com/games'), {'user-key' => 22b8379cdaa1221b76b347a15b9dcbae})
request.body = 'fields age_ratings,aggregated_rating,aggregated_rating_count,alternative_names,artworks,bundles,category,checksum,collection,cover,created_at,dlcs,expansions,external_games,first_release_date,follows,franchise,franchises,game_engines,game_modes,genres,hypes,involved_companies,keywords,multiplayer_modes,name,parent_game,platforms,player_perspectives,popularity,pulse_count,rating,rating_count,release_dates,screenshots,similar_games,slug,standalone_expansions,status,storyline,summary,tags,themes,time_to_beat,total_rating,total_rating_count,updated_at,url,version_parent,version_title,videos,websites;'
puts http.request(request).body

#environment file 