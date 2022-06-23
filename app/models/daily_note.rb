require 'pry'

class DailyNote < ActiveRecord::Base
    belongs_to :employee

    def day_of_the_week
        day = self.created_on.wday
            if day == 0
                puts "Sunday"
            elsif day == 1
                puts "Monday"
            elsif day == 2
                puts "Tuesday"
            elsif day == 3
                puts "Wednesday"
            elsif day == 4
                puts "Thursday"
            elsif day == 5
                puts "Friday"
            elsif day == 6
                puts "Saturday"
            else
        end
    end

end