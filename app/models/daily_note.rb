
class DailyNote < ActiveRecord::Base
    belongs_to :employee

    def self.inventory_needs
        all.map {|n| "#{n.day_of_the_week} - #{n.created_on.strftime("%m/%d/%Y")}: #{n.needs}"}
    end

    def day_of_the_week
        day = self.created_on.wday
            case day
            when 0    
                "Sunday"
            when 1
                "Monday"
            when 2
                "Tuesday"
            when 3
                "Wednesday"
            when 4
                "Thursday"
            when 5
                "Friday"
            when 6
                "Saturday"
            else
        end
    end

    def whats_left
        if self.pastry_soldout
            puts "SOLD OUT!"
            "Sold out!"
        else
            self.leftover_pastry
        end
    end

    def sold_out_whatday
        if self.pastry_soldout
            "We sold out #{day_of_the_week}"
        else
            "Didn't sellout #{day_of_the_week}"
        end
    end

end