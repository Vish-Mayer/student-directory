=begin
1. We're using the each() method to iterate over an array of students. How can
you modify the program to print a number before the name of each student,
e.g. "1. Dr. Hannibal Lecter"? Hint: look into each_with_index()

2. Modify your program to only print the students whose name begins with a
specific letter.
=end

def input_students
  puts "Please enter the names of the students"
  puts "To fnish, just hit 'return' twice"
  students = []
  name = gets.chomp

  while !name.empty? do
    students.push({name: name, cohort: :november})
    puts "Now we have #{students.count} students"
    name = gets.chomp
  end
  students
end


def print_header
puts "The students of Villains Academy"
puts "-----------------"
end
def print(students)
  students.each_with_index do |student, index| # 1. index number added to student.
    if student[:name][0] == "V" or student[:name][0] == "v" # 2. Names only beginning with "V" will be listed.
    puts "#{index + 1}. #{student[:name]} (#{student[:cohort]} cohort)"
  end
end
end
def print_footer(names)
puts "Overall, we have #{names.count} great students "
end

students = input_students
print_header
print(students)
print_footer(students)

=begin
Example output:

The students of Villains Academy
-----------------
3. Vish Mayer (november cohort)
5. vin diesel  (november cohort)
8. Van Damme  (november cohort)
Overall, we have 8 great students
=end
