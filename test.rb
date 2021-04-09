require "colorize"
require "tty-prompt"
require_relative "./modules/login"
require_relative "./modules/questions"
require_relative "./modules/redo_questions"
require_relative "./modules/submit"
require 'json'
require_relative './methods/user_methods'
require_relative './methods/question_methods'

# user = username
# contact = false
# support = true
# quit = false
# prompt = TTY::Prompt.new

# submit("Andrew")
redo_questions("Andrew")

# file = File.read('./saved_data/questions.json')
# data_hash = JSON.parse(file,symbolize_names: true)
# p data_hash