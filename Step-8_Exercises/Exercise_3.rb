# 3. Modify your program to only print the students whose name is shorter than 12
# characters.

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
  students.each_with_index do |student, index|
    if student[:name].length < 12 # 3. Only names with less than 12 characters will be printed. 
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
Example: output

The students of Villains Academy
-----------------
2. James Bond  (november cohort)
3. Jon Snow  (november cohort)
Overall, we have 4 great students
=end
