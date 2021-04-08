require "colorize"
require "tty-prompt"
require_relative "./modules/login"
require_relative "./modules/questions"
require_relative "./modules/redo_questions"
require_relative "./modules/submit"

contact, support = questions("Andrew")
p contact
p support
