$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'
# Call the method directors_database to retrieve the NDS

require 'pp'
require 'pry'
###### use binding.pry to make break opint and test directly in teminal

def pretty_print_nds(nds)
  # Change the code below to pretty print the nds with pp
  # nil
  
  pp nds
  
end

def print_first_directors_movie_titles

# pp directors_database
# puts directors_database

# [ # outermost structure is an Array
#   {:name => "Stephen Spielberg", :movies => # Hashes with two keys!
#     [ # inner array
#       {:title,:studio, :worldwide, :gross, :release => # Hash with four Keys!
#       }
#     ] movies array start
# 
#   }Stephen Spielberg , movies end
# ]first array end

# [0]->[:movies]->[0]->[:title]

 i = 0 
  
  while i < directors_database.length do
    name_index = 0 
    
    while name_index < directors_database[i].length do
    ######## even name_index incresed the number it still run same data of "Stephen Spielberg"
    ######## we only needs "Stephen Spielberg" data so after we find out break the loop
      
      if directors_database[i][:name] == "Stephen Spielberg"
        movies = directors_database[i][:movies]
        inner_index = 0 
        
        while inner_index < movies.length do
        
         puts directors_database[i][:movies][inner_index][:title]
         inner_index += 1
        end
        
      end
      break
      name_index += 1
    
    end
    i += 1
  
  end
  
  
  
  
end
