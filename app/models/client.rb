class Client < ActiveRecord::Base
     has_many :rentals
     has_many :vhs, through: :rentals

     def self.first_rental(client,movie_title)
      new_client = Client.create(client)
     end
     # -`Client.first_rental` - accepts and instance of arguments needed to create a new `Client` instance
     #  and a currently available `Vhs` instance (or, more difficult: a `Movie` instance or just a `Movie` title
     #  and on that basis chooses a currently available vhs); it creates a new `Client` instance and a new `Rental` instance
     #  with `current` set to true.

end


### `Client`
# **CREATE**


# **READ**
# - `Client.most_active` - returns a list of top 5 most active clients (i.e. those who had the most non-current / returned rentals)
# - `Client#favorite_genre` ⭐️ - `puts` the name of the genre that the client rented the most; in counting how many times a person watched a genre, you can treat two rentals of the same movie as two separate instances;
# - `Client.non_grata` - returns a list of all the clients who have a vhs past the due date (or, more difficult: who ever missed the return date)
# - `Client.paid_most` - returns an instance who has spent most money at the store; one rental is $5,35 upfront (bonus: additional $12 charge for every late return — do not count those that have not yet been returned) 
# - `Client.total_watch_time` - returns an Integer of all movies watched by the all clients combined (assume that a rented movie is a watched movie)
