def validate_input(variable, message)
  input = ""
  while input == ""
    print "#{variable}: "
    input = gets.chomp
    if input == ""
      puts "You must enter #{message}"
    end
  end
  return input
end
