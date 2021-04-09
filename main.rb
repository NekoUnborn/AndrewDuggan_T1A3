require "colorize"
require "csv"
require "tty-prompt"
require_relative "./modules/login"
require_relative "./modules/questions"
# require_relative "./modules/redo_questions"
require_relative "./modules/submit"

# login_module # program will continue after logged in
quit = false
user, quit = login
prompt = TTY::Prompt.new

until quit
  # Ruby function to check if file existensts
  input = if File.exist?("./saved_data/#{user}_answer.csv")
            prompt.select("what would you like to do?", %w[re-answer submit quit])
          else
            prompt.select("what would you like to do?", %w[questions quit])
          end
  # menu

  case input
  # questions(username) #loop back to menu once complete
  when "questions"
    contact, support = questions(user)

  when "re-answer"
    redo_questions(username)

  # submit
  when "submit"
    submit(user)

  # quit
  when "quit"
    quit = true
    break
  end
end
