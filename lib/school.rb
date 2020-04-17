class School
  attr_reader :nameofschool, :roster

def initialize(nameofschool)
  @nameofschool = nameofschool
  @roster = {}
end
  
def add_student(studentname, grade)
    if roster[grade] != nil
      roster[grade] << studentname
    else
      roster[grade] = []
      roster[grade] << studentname
    end
  roster
end

def grade (grade)
  roster[grade]
end

def sort
  roster.each do |grade, studentnames|
    roster[grade]=studentnames.sort
  end
end

end
