class School
    attr_accessor :new_school, :roster
    def initialize(new_school)
        @new_school = new_school
        @roster = {}
    end

    def add_student(name, grade)
        if roster[grade] == nil 
            roster[grade] = []
        end
        roster[grade] << name
    end

    def grade(grade)
        @roster[grade]
    end

    def sort
        sorted = {}
        @roster.each do |grade, students|
            sorted[grade] = students.sort
        end
        sorted
    end
end
