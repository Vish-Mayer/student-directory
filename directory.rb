
def interactive_menu
  students = [] 
  loop do
    puts "1. Input the students"
    puts "2. Show the students"
    puts "9. Exit"

    selection = gets.chomp

    case selection
    when "1"
      students = input_students
    when "2"
      print_header
      print(students)
      print_footer(students)
    when "9"
      exit
    else
      puts "I dont understand, try again"
    end
  end
end


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
puts "The students of Villains Academy"
puts "-----------------"
end
def print(students)
  students.each_with_index do |student, index|
    puts "#{index + 1}. #{student[:name]} (#{student[:cohort]} cohort)"
  end
end
def print_footer(names)
puts "Overall, we have #{names.count} great students "
end

interactive_menu
students = input_students
print_header
print(students)
print_footer(students)
