def get_user_details
  username = validate_input("username", "your username")
  password = validate_input("password", "a password")
  [username, password]
end

def validate_input(variable, message)
  input = ""
  while input == ""
    print "#{variable}: "
    input = gets.chomp
    puts "You must enter #{message}" if input == ""
  end
  input
end

def find_user(username, users)
  users.each do |line|
    return line if line[0] == username
  end
  false
end
