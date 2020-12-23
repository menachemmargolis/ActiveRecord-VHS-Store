class MovieGenre < ActiveRecord::Base

    belongs_to :movies
    belongs_to :genres
    
end