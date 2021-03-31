require 'csv'

quit = false
users = CSV.open("users.csv", "a+")
user = {}

def get_login_details
  puts "What is your user name?"
  username = gets.chomp
  puts "What is your password?"
  password = gets.chomp
  return [username, password]
end

def find_user?(username)
  CSV.open("users.csv", "a+") do |csv|
    csv.each do |line|
      if line[0] == username
        return line
      end
    end
  end
end

def append_csv(username, password)
CSV.open("users.csv", "a") {
  |csv| h.to_a.each {
    |elem| csv << elem
    }
  }
end

until quit

  until user != {}
    puts "what would you like to do?"
    puts "options: [login, signup, quit]"
    input = gets.chomp

    # signup
    if input == "signup"
      username, password = get_login_details()
      username_taken = find_user?(username)
      p !username_taken
      if !username_taken
        user[:username] = username
        user[:password] = password
        append_csv(username, password)
      end

    #login
    elsif input == "login"
      username, password = get_login_details()
      line = find_user?(username)
      if find_user
        if line[1] == password
          user[:username] = username
          user[:password] = password
          puts "You are logged in"
        else
          puts "Incorrect password"
        end
      end

    # quit
    elsif input == "quit"
      quit = true
      CSV.close
    end

  end

end