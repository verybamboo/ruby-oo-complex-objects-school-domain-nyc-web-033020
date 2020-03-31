# code here!
class School

    attr_accessor :student, :roster

    def initialize(student)
        @student = student
        @roster = {}
    end
    #or equals operator if grade array in roster array is nil?undefined? then make new empty array? not 100% on how this operator works
    def add_student(name, grade)
        roster[grade] ||= []
        roster[grade] << name
    end

    def grade(student_grade)
        roster[student_grade]
    end

    def sort
        sorted = {}
        roster.each do |grade, students|
            sorted[grade] = students.sort
        end
        sorted
    end
    school = School.new("Bayside High School")
    school.sort
end


#    school = School.new("Bayside High School")

