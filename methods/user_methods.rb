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
    if input == ""
      puts "You must enter #{message}"
    end
  end
  return input
end

def find_user(username, users)
  users.each do |line|
    return line if line[0] == username
  end
  return false
end