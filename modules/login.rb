def login
  require 'csv'
  require 'tty-prompt'
  require_relative './validate_input'
  require_relative '../methods/login_methods'

  begin
    users = CSV.parse(File.open("./saved_data/users.csv"))
    quit = false
  rescue StandardError
    puts "users.csv file is corrupt, please install again"
    quit = true
  end
  user = {}

  until (user != {}) || quit
    # system "clear"
    puts "what would you like to do?"
    puts "options: [login, signup, quit]"
    input = gets.chomp

    case input

      # login
    when "login"
      username, password = get_login_details
      line = find_user(username, users)
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
      username_taken = find_user(username, users)
      if username_taken
        puts "Username is taken"
      else
        CSV.open("./saved_data/users.csv", "a+") do |csv|
          csv << [username,password]
        end
        user[:username] = username
        user[:password] = password
        puts "New login created"
      end

    # quit
    when "quit"
      quit = true

    end

    sleep 3
  end

  return user[:username]
end
