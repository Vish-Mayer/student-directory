# Our code only works with the student name and cohort. Add more information: hobbies, country of birth, height, etc.

def input_students
  puts "Please enter the name of the student, followed by their hobbies, country of origin, and height"
  puts "To finish, continue pressing 'return'"
  students = []
  name = gets.chomp
  hobbies = gets.chomp
  country = gets.chomp
  height = gets.chomp

  while !name.empty? do
    students.push({name: name, cohort: :november, hobbies: hobbies, country: country,
      height: height})
    puts "Now we have #{students.count} students"
    name = gets.chomp
    hobbies = gets.chomp
    country = gets.chomp
    height = gets.chomp
  end
  students
end


def print_header
puts "The students of Villains Academy"
puts "-----------------"
end
def print(students)
  students.each_with_index do |student, index|
    if student[:name].length < 12
    puts "#{index + 1}. #{student[:name]} (#{student[:cohort]} cohort)"
    puts "Hobbies: #{student[:hobbies]}"
    puts "Country of Birth: #{student[:country]}"
    puts "Height: #{student[:height]}"
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
1. Vish Mayer (november cohort)
Hobbies: coding, guitar
Country of Birth: UK
Height: 5'7
2. Tomb Raider (november cohort)
Hobbies: raiding, tombs
Country of Birth: USA
Height: 5'9
3. Jig Saw (november cohort)
Hobbies: puppets, playing games
Country of Birth: USA
Height: unknown
Overall, we have 3 great students
=end
