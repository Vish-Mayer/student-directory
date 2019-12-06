# Research how the method center() of the String class works. Use it in your
# code to make the output beautifully aligned.

def input_students
  puts "Please enter the names of the students"
  puts "To finish, just hit 'return' twice"
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
puts "The students of Villains Academy".center(50,"-")
puts "-----------------".center(50)
end
def print(students)
  students.each_with_index do |student, index| # 1. index number added to student.
    puts "#{index + 1}. #{student[:name]} (#{student[:cohort]} cohort)".center(50)
  end
end
def print_footer(names)
puts "Overall, we have #{names.count} great students ".center(50,"-")
end

students = input_students
print_header
print(students)
print_footer(students)

=begin
Example output:

---------The students of Villains Academy---------
                -----------------
          1. Jon Snow (november cohort)
       2. The Night King  (november cohort)
         3. Vish Mayer (november cohort)
--------Overall, we have 3 great students --------
=end
