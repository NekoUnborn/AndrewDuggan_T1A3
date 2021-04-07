def questions(username)
  require 'csv'
  require 'tty-prompt'
  require_relative '../methods/methods'
  require_relative '../methods/login_methods'
  

  user = username
  contact = false
  supported = true
  prompt = TTY::Prompt.new

  puts "welcome to the questions module"
  begin
    questions = CSV.parse(File.open("./saved_data/questions.csv"))
    quit = false
  rescue StandardError
    puts "questions.csv file is corrupt, please install again"
    quit = true
  end

  questions.each do |c, q, m|
    category = c
    question = q
    method = m
    puts question
    answer = gets.strip.downcase
    if method == "contact"
      contact = contact(answer)
    elsif method == "support"
      support = support(answer)
    end
    CSV.open("./saved_data/#{user}_answer.csv", "a+") do |csv|
      csv << [category,question,answer,method]
    end
  end
  return [contact,support]
end
