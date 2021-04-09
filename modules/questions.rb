def questions(username)
  require 'csv'
  require 'tty-prompt'
  require_relative '../methods/user_methods'
  require_relative '../methods/question_methods'

  user = username
  contact = false
  support = true
  quit = false
  prompt = TTY::Prompt.new

  begin
    questions = CSV.parse(File.open("./saved_data/questions.csv"))
    !quit
  rescue StandardError
    puts "questions.csv file is corrupt, please install again".colorize(:red)
    quit
  end

  questions.each do |cat, quest, meth|
    category = cat
    question = quest
    answer = prompt.select("#{category}: #{question}", %w[y n])
    method = meth
    case method
    when "contact"
      contact = check_contact(answer, contact)
    when "support"
      support = check_support(answer, support)
    end
    CSV.open("./saved_data/#{user}_answers.csv", "a+") do |csv|
      csv << [category, question, method, answer]
    end
  end

  CSV.open("./saved_data/#{user}_states.csv", "w+") do |csv|
    csv << [contact, support]
  end

  sleep 2
  system "clear"
end
