require "colorize"
require "tty-prompt"
require_relative "./modules/login"
require_relative "./modules/questions"
require_relative "./modules/redo_questions"
require_relative "./modules/submit"

# login_module # program will continue after logged in
quit = false
user, quit = login
prompt = TTY::Prompt.new
p user

while user || !quit
  #menu
  input = prompt.select("what would you like to do?", %w(questions submit quit))

  case input
  # questions(username) #loop back to menu once complete
  when "questions"
    contact, support = questions(user)
p contact
p support

  # redo_questions(username)
  # when reanswer
    # redo_questions

  # submit
  when "submit"

  # quit
  when "quit"
    quit = true
  end
end
