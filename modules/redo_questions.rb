def redo_questions(username)
  require 'csv'
  require 'tty-prompt'
  require_relative '../methods/user_methods'
  require_relative '../methods/question_methods'

  user = username
  contact = false
  support = true
  quit = false
  prompt = TTY::Prompt.new

  puts "welcome to the redo_questions module"
  begin
    user_file = CSV.parse(File.open("./saved_data/#{user}_answers.csv"))
    !quit
  rescue StandardError
    puts "#{user}_answers.csv file is corrupt, please install again"
    quit
  end

  input = prompt.select("Which category of questions do you wish to change?", %w(critical high_intensity behave_of_concern communication move_mobility))
  File.delete("./saved_data/#{user}_answers.csv")
  user_file.each do |cat, quest, meth, ans|
    category = cat
    question = quest
    method = meth
    case input
    when category
      answer = prompt.select("#{category}: #{question}", %w(y n))
    when !category
      answer = ans
    end
    case method
    when "contact"
      check_contact
    when "support"
      check_support
    end

    CSV.open("./saved_data/#{user}_answer.csv", "a+") do |csv|
      csv << [category, question, method, answer]
    end
  end

  CSV.open("./saved_data/#{user}_states.csv", "w+") do |csv|
    csv << [contact,support]
  end

  sleep 2
  system "clear"

end
