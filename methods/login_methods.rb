def get_login_details
  username = validate_input("username", "your username")
  password = validate_input("password", "a password")
  [username, password]
end

def find_user(username, users)
  users.each do |line|
    return line if line[0] == username
    
    return !line if line[0] != username
    
  end
end