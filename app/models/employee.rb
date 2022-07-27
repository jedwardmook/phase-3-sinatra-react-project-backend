class Employee < ActiveRecord::Base
    has_many :dailyNotes, dependent: :destroy

    def self.employee_list
        all.map {|n| n.full_name}
    end

    def full_name
        self.first_name + " " + self.last_name
    end

end