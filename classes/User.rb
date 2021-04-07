class User
  def initialize(username,password)
    @username = validate_input("username", "your username")
    @Password = validate_input("password", "a password")
  end

  def find_user(username, users)
    users.each do |line|
      return line if line[0] == username
    end
    false
  end
end
