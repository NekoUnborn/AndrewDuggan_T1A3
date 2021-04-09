def submit(username)
  require 'csv'
  require 'tty-prompt'
  require_relative '../methods/user_methods'
  require_relative './validate_input'

  prompt = TTY::Prompt.new

  submit = prompt.select("Are you sure you wish to submit?", %w[yes no])

    #loads the states from the user_states.csv file
  states = CSV.parse(File.read("./saved_data/#{username}_states.csv"))
  contact = states[0][0]
  support = states[0][1]

  if submit == "yes"
    if support
      puts "Please contact us to organise a date for the initial interview"
    else
      puts "We apologise, your needs are outside of the scope of our NDIS registration"
      puts "Please contact us to discuss your situation further" if contact
    end

    # get the user's email address
    email = validate_input("Your email address, please", "an email address")



  else
    quit = true
  end
end
