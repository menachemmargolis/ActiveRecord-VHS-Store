class Rental < ActiveRecord::Base

    belongs_to :vhs
    belongs_to :client

    def due_date
        self.created_at + 1.week
    end

    

    def self.past_due_date
        binding.pry
        self.all.select{|rental|rental.created_at > self.updated_at + 1.week}
        
    end
   
end

# ### `Rental`
# **READ**
# - `Rental#due_date` - returns a date one week from when the record was created
# - `Rental.past_due_date` - returns a list of all the rentals past due date, currently rented or rented in the past