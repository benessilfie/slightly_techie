def gradingStudents(grades)
  # Write your code here
  rounded = []

  grades.each do |grade|
    if grade < 38
      rounded.push(grade)
    elsif grade % 5 > 2
      rr = (5 - (grade % 5)) + grade
      rounded.push(rr)
    else
      rounded.push(grade)
    end
  end

  return rounded
end