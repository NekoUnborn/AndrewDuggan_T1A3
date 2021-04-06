require "colorize"
require "tty-prompt"
require_relative "./modules/login"
require_relative "./modules/questions"
require_relative "./modules/redo_questions"
require_relative "./modules/submit"

# login_module # program will continue after logged in
# login_module
user = login
p user

while user == false
  #menu

  # questions(username) #loop back to menu once complete
  # redo_questions(username)
  # submit
end
