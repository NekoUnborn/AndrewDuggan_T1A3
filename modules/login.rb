def login_module
  require 'csv'
  require_relative './validate_input'

  quit = false
  users = CSV.open("./saved_data/users.csv", "a+")
  user = {}

  def get_login_details
    username = validate_input("username", "your username")
    password = validate_input("password", "a password")
    [username, password]
  end

  def find_user(username)
    CSV.open("./saved_data/users.csv", "a+") do |csv|
      csv.each do |line|
        return line if line[0] == username

        return !line if line[0] != username
      end
    end
  end

  def append_csv(username, password)
    CSV.open("./saved_data/users.csv", "a") do |csv|
      csv << [username, password]
    end
  end

  until (user != {}) || quit
    system "clear"
    puts "what would you like to do?"
    puts "options: [login, signup, quit]"
    input = gets.chomp

    case input

      # login
    when "login"
      username, password = get_login_details
      line = find_user(username)
      if line
        if line[1] == password
          user[:username] = username
          user[:password] = password
          puts "You are logged in"
        else
          puts "Incorrect password"
        end
      else
        puts "Username does not exist, sign up"
      end

      # signup
    when "signup"
      username, password = get_login_details
      username_taken = find_user(username)
      if username_taken
        puts "Username is taken"
      else
        append_csv(username, password)
        user[:username] = username
        user[:password] = password
        puts "New login created"
      end

      # quit
    when "quit"
      quit = true

    else
      puts "Incorrect option"
    end

    sleep 3
  end
end
