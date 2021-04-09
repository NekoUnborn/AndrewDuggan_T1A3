require 'colorize'
require 'tty-prompt'
require 'csv'
require 'mailgun-ruby'
require 'dotenv/load'
require_relative './methods/question_methods'
require_relative './methods/user_methods'
require_relative "./modules/login"
require_relative "./modules/questions"
require_relative "./modules/redo_questions"
require_relative "./modules/submit"
require_relative './modules/validate_input'

submit("Andrew")
