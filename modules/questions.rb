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

  puts "welcome to the questions module"
  begin
    questions = CSV.parse(File.open("./saved_data/questions.csv"))
    !quit
  rescue StandardError
    puts "questions.csv file is corrupt, please install again"
    quit
  end

  questions.each do |cat, quest, meth|
    category = cat
    question = quest
    answer = prompt.select("#{category}: #{question}", %w(y n))
    method = meth
    case method
    when "contact"
      if !contact
        contact = contact(answer)
      end
    when "support"
      if support
        support = support(answer)
      end
    end
    CSV.open("./saved_data/#{user}_answer.csv", "a+") do |csv|
      csv << [category, question, answer, method]
    end
  end

  sleep 2
  system "clear"
  [contact, support]
end
