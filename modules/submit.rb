def submit(username)
  require 'csv'
  require 'colorize'
  require 'mailgun-ruby'
  require 'tty-prompt'
  require 'dotenv/load'
  require_relative '../methods/user_methods'
  require_relative './validate_input'

  prompt = TTY::Prompt.new

  submit = prompt.select("Are you sure you wish to submit?", %w[yes no])

  begin
    user_answers = CSV.parse(File.open("./saved_data/#{user}_answer.csv"))
    !quit
  rescue StandardError
    puts "#{user}_answer.csv file is corrupt, please install again".colorize(:red).blink
    quit
  end

  # loads the states from the user_states.csv file
  states = CSV.parse(File.read("./saved_data/#{username}_states.csv"))
  contact = states[0][0]
  support = states[0][1]

  if submit == "yes"
    if support
      puts "Please contact us to organise a date for the initial interview".colorize(:green)
    else
      puts "We apologise, your needs are outside of the scope of our NDIS registration".colorize(:red)
      puts "Please contact us to discuss your situation further".colorize(:pink) if contact
    end

    # get the user's email address
    # email = validate_input("Your email address, please", "an email address")
    begin
    RestClient.post "https://api:#{ENV[MY_API]}"\
    "@api.mailgun.net/v3/#{ENV[DOMAIN_NAME]}/messages",
                    from: "#{email}",
                    to: "YOU@#{ENV[DOMAIN_NAME]}",
                    subject: "Hello",
                    text: "#{user_answers}"
    rescue StandardError
      puts "Please email the #{user}_answer.csv file to us".colorize(:pink).blink
    end

  else
    quit
  end
end
