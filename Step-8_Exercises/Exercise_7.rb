=begin
In the input_students method the cohort value is hard-coded. How can you ask for
both the name and the cohort? What if one of the values is empty? Can you supply
a default value? The input will be given to you as a string? How will you convert
it to a symbol? What if the user makes a typo?
=end

def input_students

  months = ["january", "febuary", "march", "april", "may", "june", "july",
    "august", "september", "october", "november", "december",
    "January", "Febuary", "March", "April", "May", "June", "July",
    "August", "September", "October", "November", "December", " "
  ]

    puts "Please enter the name of the student"
    puts "To finish, just hit 'return"
    students = []
    name = gets.chomp
    puts "Now enter the students cohort"
    cohort = gets.chomp

    until cohort.match? Regexp.union(months)
        puts "Please enter a valid month - press 'space', 'enter' if unknown"
        cohort = gets.chomp
      end

      if cohort == " "
        cohort = "unknown"
      end

    while !name.empty? do
      students.push({name: name, cohort: cohort})
      puts "Now we have #{students.count} students"
      puts "Please enter the name of the student"
      puts "To finish, just hit 'return"
      name = gets.chomp
      break if name.empty?
      puts "Now enter the students cohort"
      cohort = gets.chomp
      until cohort.match? Regexp.union(months)
          puts "Please enter a valid month - press 'space', 'enter' if unknown"
          cohort = gets.chomp
      end
      if cohort == " "
        cohort = "unknown"
      end
    end
    students
  end


  def print_header
  puts "The students of Villains Academy".center(50,"-")
  puts "-----------------".center(50)
  end
  def print(students)
    students.each_with_index do |student, index|
      puts "#{index + 1}. #{student[:name].capitalize} (#{student[:cohort].upcase} cohort)".center(50)
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
          1. Jon snow (DECEMBER cohort)
       2. The night king  (UNKNOWN cohort)
         3. Vish mayer (NOVEMBER cohort)
--------Overall, we have 3 great students --------
=end
