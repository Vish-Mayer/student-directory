@students = []

def save_students
  file = File.open("students.csv", "w")
  @students.each do |student|
    student_data =  student_data = [student[:name], student[:cohort]]
    csv_line = student_data.join(",")
    file.puts csv_line
  end
  file.close
end

def interactive_menu
  @students = []
  loop do
    print_menu
    process(gets.chomp)
  end
end

def print_menu
  puts "1. Input the students"
  puts "2. Show the students"
  puts "3. Save the list to students.csv"
  puts "9. Exit"
end

  def show_students
    print_header
    print_student_list
    print_footer
  end

  def process(selection)
    case selection
    when "1"
      input_students
    when "2"
      show_students
    when "3"
      save_students
    when "9"
      exit
    else
      puts "I dont understand, try again"
    end
  end

def input_students
  puts "Please enter the names of the students"
  puts "To finish, just hit 'return' twice"
  @students = []
  name = gets.chomp

  while !name.empty? do
    @students.push({name: name, cohort: :november})
    puts "Now we have #{@students.count} students"
    name = gets.chomp
  end
  @students
end

def print_header
puts "The students of Villains Academy".center(50,"-")
puts "-----------------".center(50)
end
def print_student_list
  @students.each_with_index do |student, index|
    puts "#{index + 1}. #{student[:name]} (#{student[:cohort]} cohort)".center(50)
  end
end
def print_footer
puts "Overall, we have #{@students.count} great students ".center(50,"-")
end

interactive_menu
